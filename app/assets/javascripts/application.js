// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .
var items_data = [];
var entry_number = 0;

$(function(){
    var items_elt = $("#items");
    _.templateSettings = {
      interpolate: /\{\{\=(.+?)\}\}/g,
      evaluate: /\{\{(.+?)\}\}/g

    };
    
    //rison.decode(window.location.hash);
    jQuery.urlShortener.settings.apiKey='AIzaSyDqTb9o3HWKJRZUrhEHrt_QCpXzBnjaqfQ';
    
    //items_data = [];
    var item_template = _.template($("#item_template").html());
    
    $(".add_item").on('click', function(e) {
       var row = $(this).parents('.item').first();
       var item_data = {
           name: row.find(".name").data('name'),
           price: row.find(".price").data("price"),
           notes: $(row.find(".notes textarea")).val(),
           id: row.attr("id")
       };
       //var variation_elements = row.find('.variation');
       
       var variations = row.find(".variation");
       var variations_data = [];
       for(var i = 0; i < variations.length; i++){
           if($(variations[i]).hasClass("select")){
               variations_data.push($.map($(variations[i]).find("input"), function(x,i){ return $(x).prop("checked") } ));
           }else if($(variations[i]).hasClass("binary")){
               variations_data.push($(variations[i]).find("input").first().prop("checked"));
           }else if($(variations[i]).hasClass("mutex")){
               variations_data.push($(variations[i]).find("option:selected").first().val());
           }
       }
       item_data.variations_data = variations_data;
       items_data.push(item_data);
       renderOrder();
       e.preventDefault();
    }); 
    
    $("#items").on('click',".remove_item",function(e) {
        var item_to_remove = $($(this).parents(".item"));
        var item_to_remove_entry_number = item_to_remove.data("entry_number");
        item_to_remove.remove();
        var index_of_itr = _.findIndex(items_data, function (x){ 
            return x.entry_number == item_to_remove_entry_number;
        } );
        items_data[index_of_itr] = null;
        items_data = _.compact(items_data);
        console.log(index_of_itr);
        console.log(items_data);
        renderOrder();
        e.preventDefault();
    });
    
    $("#place_order").click(function(e){
        e.preventDefault();
        $zopim(function() {
          $zopim.livechat.say(location.toString());
        });
    })
    
    $("#contents").on('click','a', function(e) {
        var leftover = location.hash;
        location.hash = leftover;
        console.log(location.hash);
        setTimeout(function() {
            location.hash = leftover;
        }, 50);
    });
    
    function renderOrder(){
        items_elt.empty();
        
        // console.log(items_data);
        var subtotal = 0;
        var render_items_data =  $.extend(true, {}, items_data);
        for(var i = 0; i < items_data.length; i++){
            var row = $("#"+items_data[i].id);
            var variations = row.find(".variation");
            var variations_data = items_data[i].variations_data;
            var variations_render_data = [];
            var total_item_price = Number(items_data[i].price);
            for(var j = 0; j< variations.length; j++){
                if($(variations[j]).hasClass("select")){
                    var select_boxes = $(variations[j]).find("input");
                    for(var k = 0; k < select_boxes.length; k++){
                        if(variations_data[j][k] == true){
                            variations_render_data.push({
                                name: $(select_boxes[k]).val(),
                                price: $(select_boxes[k]).data('price')
                            });
                            total_item_price += Number($(select_boxes[k]).data('price'));
                        }
                    }
                }else if($(variations[j]).hasClass("binary")){
                    var checkboxes = $(variations[j]).find("input").first();
                    if(variations_data[j] == true){
                        variations_render_data.push({
                            name: $(checkboxes).val(),
                            price: $(checkboxes).data('price')
                        });
                        total_item_price += Number($(checkboxes).data('price'));
                    }
                }else if($(variations[j]).hasClass("mutex")){
                    var mutex = $(variations[j]).find("option[value='"+variations_data[j]+"']").first();
                    variations_render_data.push({
                        name: $(mutex).val(),
                        price: $(mutex).data('price')
                    });
                    total_item_price += Number($(mutex).data('price'))
                }
            }
            render_items_data[i].variations_data = variations_render_data;
            render_items_data[i].total_price = total_item_price;
            if(typeof render_items_data[i].entry_number == "undefined"){
                render_items_data[i].entry_number = entry_number;
                items_data[i].entry_number = entry_number;
                entry_number++;
            }
            //render_items_data[i].entry_number = entry_number;
            subtotal += total_item_price;
            //console.log(render_items_data[i]);
            items_elt.append(item_template(render_items_data[i]));
            
        }
        var summary = {
            subtotal: subtotal.toFixed(2),
            delivery: Number(3).toFixed(2),
            tax: ((subtotal+3)*.06).toFixed(2),
            total:  ((subtotal+3)*1.06).toFixed(2)
        };
        var summary_pairs = _.pairs(summary);
        for(var sp = 0; sp < summary_pairs.length; sp++){
            $("#"+summary_pairs[sp][0]+" .summary_info").text(summary_pairs[sp][1]);
        }
        //console.log(rison.encode(items_data));
        window.location.hash = rison.encode(items_data);
    }
    
    if(location.hash.length > 0){
        items_data = rison.decode(location.hash.slice(1));
    }
    renderOrder();
    
});