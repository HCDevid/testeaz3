class VisitorsController < ApplicationController

  def google_verify
    render 'google908b5ad4963c9554', :layout => false
  end
  
  def faq
  end
  
  def jobs
  end
  
  def hours
  end
  
  def mcdonalds
  end
  
  def chipotle
    
    @varHash_pre = [
      {:vID => 1,	:type =>"mutex",	:name =>"Apple"},
    	{:vID => 1,	:type =>"mutex",	:name => "Peach Orange"},
    	{:vID => 1,	:type =>"mutex",	:name => "Pineapple Orange Banana"},
    	{:vID => 1,	:type =>"mutex",	:name => "Pomegranate Cherry"},
    	{:vID => 2,	:type =>"binary",	:name => "Large"},
    	{:vID => 3,	:type =>"mutex",	:name => "Soft Corn"},
    	{:vID => 3,	:type =>"mutex",	:name => "Soft Flour"},
    	{:vID => 3,	:type =>"mutex",	:name => "Crispy Corn"},
    	{:vID => 4,	:type =>"select",	:name => "Extra Filling"},
    	{:vID => 5,	:type =>"mutex",	:name => "White Rice"},
    	{:vID => 5,	:type =>"mutex",	:name => "Brown Rice"},
    	{:vID => 6,	:type =>"mutex",	:name => "Black Beans"},
    	{:vID => 6,	:type =>"mutex",	:name => "Pinto Beans"},
    	{:vID => 4,	:type =>"select",	:name => "Cheese"},
    	{:vID => 4,	:type =>"select",	:name => "Mild Salsa"},
    	{:vID => 4,	:type =>"select",	:name => "Medium Salsa"},
    	{:vID => 4,	:type =>"select",	:name => "Hot Salsa"},
    	{:vID => 4,	:type =>"select",	:name => "Sour Cream"},
    	{:vID => 4,	:type =>"select",	:name => "Guacamole"},
    	{:vID => 4,	:type =>"select",	:name => "Chipotle Honey-Vinaigrette"}
    ]
    
    @varHash = @varHash_pre.map.with_index do |x,i|
      x[:col] = i
      x
    end
    
    @items = [{:category => "Burrito" ,	:name => "Burrito - Chicken"	, :price => 6.5		},
      {:category => "Burrito" ,	:name => "Burrito - Steak"		, :price => 7.2		},
      {:category => "Burrito" ,	:name => "Burrito - Barbacoa"	, :price => 7.2		},
      {:category => "Burrito" ,	:name => "Burrito - Carnitas"	, :price => 6.95	},
      {:category => "Burrito" ,	:name => "Burrito - Sofritas"	, :price => 6.5		},
      {:category => "Burrito" ,	:name => "Burrito - Veggie"		, :price => 6.5		},
      {:category => "Bowl" 	,	:name => "Bowl - Chicken"		, :price => 6.5		},
      {:category => "Bowl" 	,	:name => "Bowl - Steak"			, :price => 7.2		},
      {:category => "Bowl" 	,	:name => "Bowl - Barbacoa"		, :price => 7.2		},
      {:category => "Bowl" 	,	:name => "Bowl - Carnitas"		, :price => 6.95	},
      {:category => "Bowl" 	,	:name => "Bowl - Sofritas"		, :price => 6.5		},
      {:category => "Bowl" 	,	:name => "Bowl - Veggie"		, :price => 6.5		},
      {:category => "Tacos" 	,	:name => "Tacos - Chicken"		, :price => 6.5		},
      {:category => "Tacos" 	,	:name => "Tacos - Steak"		, :price => 7.2		},
      {:category => "Tacos" 	,	:name => "Tacos - Barbacoa"		, :price => 7.2		},
      {:category => "Tacos" 	,	:name => "Tacos - Carnitas"		, :price => 6.95	},
      {:category => "Tacos" 	,	:name => "Tacos - Sofritas"		, :price => 6.5		},
      {:category => "Tacos" 	,	:name => "Tacos - Veggie"		, :price => 6.5		},
      {:category => "Salads" 	,	:name => "Salads - Chicken"		, :price => 6.5		},
      {:category => "Salads" 	,	:name => "Salads - Steak"		, :price => 7.2		},
      {:category => "Salads" 	,	:name => "Salads - Barbacoa"	, :price => 7.2		},
      {:category => "Salads" 	,	:name => "Salads - Carnitas"	, :price => 6.95	},
      {:category => "Salads" 	,	:name => "Salads - Sofritas"	, :price => 6.5		},
      {:category => "Salads" 	,	:name => "Salads - Veggie"		, :price => 6.5		},
      {:category => "Sides" 	,	:name => "Chips"				, :price => 1.3		},
      {:category => "Sides" 	,	:name => "Soda"					, :price => 1.8		},
      {:category => "Sides" 	,	:name => "Bottled Water"		, :price => 2.25	},
      {:category => "Sides" 	,	:name => "Nantucket Nectar"		, :price => 2.6		},
      {:category => "Sides" 	,	:name => "Izze"					, :price => 2.6		}]
    
    @item_variations = [[nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, 0, 0, 0, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, 0, 0, 0, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, 0, 0, 0, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, 0, 0, 0, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, 0, 0, 0, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, 0, 0, 0, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, 0],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, 0],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, 0],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, 0],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, 0],
      [nil, nil, nil, nil, nil, nil, nil, nil, 2.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.95, 0],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0.65, 0.65, 0.65, nil, 1.95, nil],
      [nil, nil, nil, nil, 0.3, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [0, 0, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
      [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]]
      
    #for each row, you have the basic information for the item
    #but then you must determine which of the refinements are applicable
    # [1,1,2,3,3,3]
      #so for each row
      #have an array, []
      #
    
    ids_for_columns = @varHash.map{ |x| x[:vID]}
    
    @itemsWithVariations = []
    k = 0
    @items.each_with_index do |item, i|
      varHashForRowMinusPrice = @varHash.deep_dup
      varHashForRow = varHashForRowMinusPrice.each_with_index.map do |variation,j|
        if @item_variations[i][j] == nil
          nil
        else
          variation[:price] = @item_variations[i][j]
          variation
        end
      end
      varHashForRow.compact!
      item[:groupedVariations] = (varHashForRow.group_by { |x| x[:vID]}).values
      @itemsWithVariations.push item
    end
    for m in 0..(@itemsWithVariations.length-1)
      @itemsWithVariations[m][:id] = m
    end
    @categories = (@itemsWithVariations.group_by { |x| x[:category]}).values
    
    
    render 'chipotle'
  end
  
  def little_caesars
     @varHash_pre = [{:name => "Extra Pepperoni",	:type => "select", :vID => 1},
     {:name => "Extra Sausage",	:type => "select", :vID => 1},
     {:name => "Extra Bacon",	:type => "select", :vID => 1},
     {:name => "Extra Ham",	:type => "select", :vID => 1},
     {:name => "Mushroom",	:type => "select", :vID => 2},
     {:name => "Green Pepper",	:type => "select", :vID => 2},
     {:name => "Onion",	:type => "select", :vID => 2},
     {:name => "Pineapple",	:type => "select", :vID => 2} ]

    @varHash = @varHash_pre.map.with_index do |x,i|
      x[:col] = i
      x
    end
    
    @items = [{:category => "Pizzas", :price => 6.5, :name => "Large Pizza"},
    {:category => "Pizzas", :price => 9.6, :name => "Deep Dish"},
    {:category => "Pizzas", :price => 9.6, :name => "Ultimate Supreme"},
    {:category => "Pizzas", :price => 9.6, :name => "3 Meat Treat"},
    {:category => "Pizzas", :price => 9.6, :name => "Hula Hawaiian"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "Buffalo"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "BBQ"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "Spicy BBQ"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "Lemon Pepper"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "Oven-Roasted"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "Bacon Honey Mustard"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "Garlic Parmesan"},
    {:category => "Caesar Wings (8 pc.)", :price => 7.8, :name => "Teriyaki"},
    {:category => "Sides", :price => 3.5, :name => "Crazy Combo (Crazy Bread & Crazy Sauce)"},
    {:category => "Sides", :price => 5.2, :name => "Italian Cheese Bread (10 pieces)"},
    {:category => "Sides", :price => 0.5, :name => "Caesar Dips"},
    {:category => "Sides", :price => 2.6, :name => "2-Liter Pepsi"},
    {:category => "Sides", :price => 2.6, :name => "2-Liter Diet Pepsi"},
    {:category => "Sides", :price => 2.6, :name => "2-Liter Mountain Dew"},
    {:category => "Sides", :price => 2.6, :name => "2-Liter Sierra Mist"}]
    
    @item_variations = [[2.63,	2.63,	2.63,	2.63,	1,		1,	1,	1],
    [2.63,	2.63,	2.63,	2.63,	1,		1,	1,	1],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ],
    [nil, 	 nil, 	 nil, 	 nil, 	nil, 	 nil, 	 nil, 	 nil ]]
    
    
    ids_for_columns = @varHash.map{ |x| x[:vID]}
    
    @itemsWithVariations = []
    k = 0
    @items.each_with_index do |item, i|
      varHashForRowMinusPrice = @varHash.deep_dup
      varHashForRow = varHashForRowMinusPrice.each_with_index.map do |variation,j|
        if @item_variations[i][j] == nil
          nil
        else
          variation[:price] = @item_variations[i][j]
          variation
        end
      end
      varHashForRow.compact!
      item[:groupedVariations] = (varHashForRow.group_by { |x| x[:vID]}).values
      @itemsWithVariations.push item
    end
    for m in 0..(@itemsWithVariations.length-1)
      @itemsWithVariations[m][:id] = m
    end
    @categories = (@itemsWithVariations.group_by { |x| x[:category]}).values
    
    
    render 'chipotle'
  end
  
  def big_ten_burrito
    @varHash_pre = [{:name => "Burrito", :type => "mutex", :vID => 1 },
    {:name => "Bowl", :type => "mutex", :vID => 1 },
    {:name => "Deluxe", :type => "mutex", :vID => 2 },
    {:name => "Giant + Deluxe", :type => "mutex", :vID => 2 },
    {:name => "Small Guacamole", :type => "select", :vID => 3 },
    {:name => "Sour Cream", :type => "select", :vID => 3 },
    {:name => "Mild Salsa", :type => "select", :vID => 3 },
    {:name => "Medium Salsa", :type => "select", :vID => 3 },
    {:name => "Hot Salsa", :type => "select", :vID => 3 },
    {:name => "Diablo Salsa", :type => "select", :vID => 3 }]

    
    @varHash = @varHash_pre.map.with_index do |x,i|
      x[:col] = i
      x
    end
    
    
    @items = [{ :category => "Burrito/Bowl", :name => "Burrito - Vegetarian", :price => 5.5},
    { :category => "Burrito/Bowl", :name => "Burrito - Roasted Veggie", :price => 8.5},
    { :category => "Burrito/Bowl", :name => "Burrito - Grilled Chicken", :price => 8.5},
    { :category => "Burrito/Bowl", :name => "Burrito - Shredded Chicken", :price => 8.5},
    { :category => "Burrito/Bowl", :name => "Burrito - Ground Beef", :price => 8.5},
    { :category => "Burrito/Bowl", :name => "Burrito - Steak", :price => 8.75},
    { :category => "Burrito/Bowl", :name => "Burrito - Half and Half", :price => 8.75},
    { :category => "Burrito/Bowl", :name => "Burrito - Super Bean & Cheese", :price => 4},
    { :category => "Quesadillas", :name => "Quesadilla - Plain", :price => 3.5},
    { :category => "Quesadillas", :name => "Quesadilla - Roasted Veggie", :price => 5.5},
    { :category => "Quesadillas", :name => "Quesadilla - Grilled Chicken", :price => 5.5},
    { :category => "Quesadillas", :name => "Quesadilla - Shredded Chicken", :price => 5.5},
    { :category => "Quesadillas", :name => "Quesadilla - Ground Beef", :price => 5.5},
    { :category => "Quesadillas", :name => "Quesadilla - Steak", :price => 6.25},
    { :category => "Tacos", :name => "Tacos - Vegetarian",:price => 3.25},
    { :category => "Tacos", :name => "Tacos - Grilled Chicken",:price => 4.25},
    { :category => "Tacos", :name => "Tacos - Shredded Chicken",:price => 4.25},
    { :category => "Tacos", :name => "Tacos - Ground Beef",:price => 4.25},
    { :category => "Tacos", :name => "Tacos - Steak",:price => 3.25},
    { :category => "Chimichangas", :name => "Chimichanga - Vegetarian", :price => 7},
    { :category => "Chimichangas", :name => "Chimichanga - Grilled Chicken", :price => 9.25},
    { :category => "Chimichangas", :name => "Chimichanga - Shredded Chicken", :price => 9.25},
    { :category => "Chimichangas", :name => "Chimichanga - Ground Beef", :price => 9.25},
    { :category => "Chimichangas", :name => "Chimichanga - Steak", :price => 10},
    { :category => "Nachos", :name => "Nachos - Vegetarian",:price => 7},
    { :category => "Nachos", :name => "Nachos - Grilled Chicken",:price => 8.5},
    { :category => "Nachos", :name => "Nachos - Shredded Chicken",:price => 8.5},
    { :category => "Nachos", :name => "Nachos - Ground Beef",:price => 8.5},
    { :category => "Nachos", :name => "Nachos - Steak",:price => 8.75},
    { :category => "Nachos", :name => "Chips and Salsa",:price => 4.5},
    { :category => "Nachos", :name => "Chips and Guacamole",:price => 7},
    { :category => "Nachos", :name => "Chips and Queso",:price => 6.25},
    { :category => "Sides, Drinks, & Desserts", :name => "Fountain", :price => 2.25},
    { :category => "Sides, Drinks, & Desserts", :name => "Bottled Water", :price => 2.25},
    { :category => "Sides, Drinks, & Desserts", :name => "Churros", :price => 2.5},
    { :category => "Sides, Drinks, & Desserts", :name => "Large Salsa", :price => 3},
    { :category => "Sides, Drinks, & Desserts", :name => "Small Guacamole", :price => 1.5},
    { :category => "Sides, Drinks, & Desserts", :name => "Queso", :price => 1.5},
    { :category => "Sides, Drinks, & Desserts", :name => "Chips", :price => 2},
    { :category => "Sides, Drinks, & Desserts", :name => "Rice or Beans", :price => 2},
    { :category => "Sides, Drinks, & Desserts", :name => "Sour Cream", :price => 0.5},
    { :category => "Sides, Drinks, & Desserts", :name => "Mild Salsa/Sauce", :price => 0},
    { :category => "Sides, Drinks, & Desserts", :name => "Medium Salsa/Sauce", :price => 0},
    { :category => "Sides, Drinks, & Desserts", :name => "Hot Salsa/Sauce", :price => 0},
    { :category => "Sides, Drinks, & Desserts", :name => "Diablo Salsa/Sauce", :price => 0}]

  @item_variations = [ [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [0	, 0,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil, 	nil,	2.75,	5.25,	1.5,	0, 0.5,	0,	0,	0	,0],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil],
    [nil,	nil,	nil,	nil,	nil, 	nil,	nil,	nil,	nil	,nil]]

    ids_for_columns = @varHash.map{ |x| x[:vID]}
    
    @itemsWithVariations = []
    k = 0
    @items.each_with_index do |item, i|
      varHashForRowMinusPrice = @varHash.deep_dup
      varHashForRow = varHashForRowMinusPrice.each_with_index.map do |variation,j|
        if @item_variations[i][j] == nil
          nil
        else
          variation[:price] = @item_variations[i][j]
          variation
        end
      end
      varHashForRow.compact!
      item[:groupedVariations] = (varHashForRow.group_by { |x| x[:vID]}).values
      @itemsWithVariations.push item
    end
    for m in 0..(@itemsWithVariations.length-1)
      @itemsWithVariations[m][:id] = m
    end
    @categories = (@itemsWithVariations.group_by { |x| x[:category]}).values
    
    render 'chipotle'
  end
  
  def five_guys
    @varHash_pre = [{:name => "Small", :type => "mutex", :vID => 1},
    {:name => "Large", :type => "mutex", :vID => 1},
    {:name => "Extra Bacon", :type => "select", :vID => 2},
    {:name => "Extra Cheese", :type => "select", :vID => 2},
    {:name => "Extra Patty", :type => "select", :vID => 2},
    {:name => "No bun (bowl)", :type => "select", :vID => 3},
    {:name => "No bun (lettuce wrap)", :type => "select", :vID => 3},
    {:name => "All the Way", :type => "select", :vID => 3},
    {:name => "Ketchup", :type => "select", :vID => 3},
    {:name => "Mustard", :type => "select", :vID => 3},
    {:name => "Jalapeno Peppers", :type => "select", :vID => 3},
    {:name => "Green Peppers", :type => "select", :vID => 3},
    {:name => "A.1.(R) Steak Sauce", :type => "select", :vID => 3},
    {:name => "BBQ Sauce", :type => "select", :vID => 3},
    {:name => "Hot Sauce", :type => "select", :vID => 3},
    {:name => "Grilled Jalapenos", :type => "select", :vID => 3},
    {:name => "Mayo", :type => "select", :vID => 3},
    {:name => "Relish", :type => "select", :vID => 3},
    {:name => "Onion", :type => "select", :vID => 3},
    {:name => "Lettuce", :type => "select", :vID => 3},
    {:name => "Pickles", :type => "select", :vID => 3},
    {:name => "Tomatoes", :type => "select", :vID => 3},
    {:name => "Grilled Onions", :type => "select", :vID => 3},
    {:name => "Grilled Mushrooms", :type => "select", :vID => 3},
    {:name => "Grilled Green Peppers", :type => "select", :vID => 3},
    {:name => "Plain", :type => "select", :vID => 3}]

    
    @varHash = @varHash_pre.map.with_index do |x,i|
      x[:col] = i
      x
    end
  
    @items = [{:category => "Burgers", :name => "Hamburger", :price => 7.75 },
    {:category => "Burgers", :name => "Cheeseburger", :price => 8.5 },
    {:category => "Burgers", :name => "Bacon Burger", :price => 9 },
    {:category => "Burgers", :name => "Bacon Cheeseburger", :price => 9 },
    {:category => "Burgers", :name => "Little Hamburger", :price => 5.5 },
    {:category => "Burgers", :name => "Little Cheeseburger", :price => 6.25 },
    {:category => "Burgers", :name => "Little Bacon Burger", :price => 6.75 },
    {:category => "Burgers", :name => "Little Bacon Cheeseburger", :price => 7.75 },
    {:category => "Hot Dogs", :name => "Hot Dog", :price => 5.25 },
    {:category => "Hot Dogs", :name => "Cheese Dog", :price => 6 },
    {:category => "Hot Dogs", :name => "Bacon Dog", :price => 6.5 },
    {:category => "Hot Dogs", :name => "Bacon Cheese Dog", :price => 7.5 },
    {:category => "Sandwiches", :name => "Grilled Cheese Sandwich", :price => 5.25 },
    {:category => "Sandwiches", :name => "BLT Sandwich", :price => 7.5 },
    {:category => "Sandwiches", :name => "Veggie Sandwich", :price => 4.25 },
    {:category => "Sandwiches", :name => "Veggie Sandwich with Cheese", :price => 5.25 },
    {:category => "Sides", :name => "Fries", :price => 4.75 },
    {:category => "Sides", :name => "Cajun Fries", :price => 4.75 },
    {:category => "Sides", :name => "Regular Drink", :price => 2.75 },
    {:category => "Sides", :name => "Large Drink", :price => 3.25 },
    {:category => "Sides", :name => "Bottled Water", :price => 3 }]

  @item_variations = [[nil, nil, nil, nil, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, 1.35, 0, 2.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 1, nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, 1.35, 1, nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [nil, nil, 1.35, 0, nil, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
    [-1, 2.25, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [-1, 2.25, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil]]

    ids_for_columns = @varHash.map{ |x| x[:vID]}
    
    @itemsWithVariations = []
    k = 0
    @items.each_with_index do |item, i|
      varHashForRowMinusPrice = @varHash.deep_dup
      varHashForRow = varHashForRowMinusPrice.each_with_index.map do |variation,j|
        if @item_variations[i][j] == nil
          nil
        else
          variation[:price] = @item_variations[i][j]
          variation
        end
      end
      varHashForRow.compact!
      item[:groupedVariations] = (varHashForRow.group_by { |x| x[:vID]}).values
      @itemsWithVariations.push item
    end
    for m in 0..(@itemsWithVariations.length-1)
      @itemsWithVariations[m][:id] = m
    end
    @categories = (@itemsWithVariations.group_by { |x| x[:category]}).values

    render 'chipotle'
  end
  
  
  def mcdonalds
      
    @varHash_pre = [{:name => "Small", :type => "mutex", :vID => 1 },
    {:name => "Medium", :type => "mutex", :vID => 1 },
    {:name => "Large", :type => "mutex", :vID => 1 },
    {:name => "Grilled", :type => "mutex", :vID => 2 },
    {:name => "Crispy", :type => "mutex", :vID => 2 },
    {:name => "Mango Pineapple", :type => "mutex", :vID => 3 },
    {:name => "Strawberry Banana", :type => "mutex", :vID => 3 },
    {:name => "Blueberry Pomegranate", :type => "mutex", :vID => 3 },
    {:name => "Mocha", :type => "mutex", :vID => 3 },
    {:name => "Caramel", :type => "mutex", :vID => 3 },
    {:name => "Chocolate Chip", :type => "mutex", :vID => 3 },
    {:name => "Chocolate", :type => "mutex", :vID => 3 },
    {:name => "Vanilla", :type => "mutex", :vID => 3 },
    {:name => "Strawberry", :type => "mutex", :vID => 3 },
    {:name => "Hot Fudge", :type => "mutex", :vID => 3 },
    {:name => "Oreo", :type => "mutex", :vID => 3 },
    {:name => "M&M", :type => "mutex", :vID => 3 },
    {:name => "Coke", :type => "mutex", :vID => 3 },
    {:name => "Diet Coke", :type => "mutex", :vID => 3 },
    {:name => "Dr. Pepper", :type => "mutex", :vID => 3 },
    {:name => "Sprite", :type => "mutex", :vID => 3 },
    {:name => "Hi C Orange", :type => "mutex", :vID => 3 },
    {:name => "Powerade", :type => "mutex", :vID => 3 }]

    @varHash = @varHash_pre.map.with_index do |x,i|
      x[:col] = i
      x
    end


    @items = [{:category => "Normal Menu", :name => "Big Mac", :price => "4.29" },
    {:category => "Normal Menu", :name => "Big Mac - Meal", :price => "5.99" },
    {:category => "Normal Menu", :name => "2 Cheeseburgers", :price => "2.99" },
    {:category => "Normal Menu", :name => "2 Cheeseburgers - Meal", :price => "5.29" },
    {:category => "Normal Menu", :name => "Quarter Pounder with Cheese", :price => "3.99" },
    {:category => "Normal Menu", :name => "Quarter Pounder with Cheese - Meal", :price => "5.89" },
    {:category => "Normal Menu", :name => "Double Quarter Pounder with Cheese", :price => "5.19" },
    {:category => "Normal Menu", :name => "Double Quarter Pounder with Cheese - Meal", :price => "6.99" },
    {:category => "Normal Menu", :name => "Bacon Habanero Ranch Quarter Pounder", :price => "4.39" },
    {:category => "Normal Menu", :name => "Bacon Habanero Ranch Quarter Pounder - Meal", :price => "6.29" },
    {:category => "Normal Menu", :name => "Deluxe Quarter Pounder", :price => "4.49" },
    {:category => "Normal Menu", :name => "Deluxe Quarter Pounder - Meal", :price => "6.39" },
    {:category => "Normal Menu", :name => "Bacon & Cheese Quarter Pounder", :price => "4.39" },
    {:category => "Normal Menu", :name => "Bacon & Cheese Quarter Pounder - Meal", :price => "6.29" },
    {:category => "Normal Menu", :name => "Premium McWrap Chicken & Bacon (Grilled or Crispy)", :price => "4.29" },
    {:category => "Normal Menu", :name => "Premium McWrap Chicken & Bacon (Grilled or Crispy) - Meal", :price => "5.99" },
    {:category => "Normal Menu", :name => "Premium McWrap Chicken & Ranch (Grilled or Crispy)", :price => "4.29" },
    {:category => "Normal Menu", :name => "Premium McWrap Chicken & Ranch (Grilled or Crispy) - Meal", :price => "5.99" },
    {:category => "Normal Menu", :name => "Premium McWrap Sweet Chili Chicken (Grilled or Crispy)", :price => "4.49" },
    {:category => "Normal Menu", :name => "Premium McWrap Sweet Chili Chicken (Grilled or Crispy) - Meal", :price => "6.29" },
    {:category => "Normal Menu", :name => "Filet-O-Fish", :price => "3.99" },
    {:category => "Normal Menu", :name => "Filet-O-Fish - Meal", :price => "5.89" },
    {:category => "Normal Menu", :name => "Double Filet-O-Fish", :price => "5.19" },
    {:category => "Normal Menu", :name => "Double Filet-O-Fish - Meal", :price => "6.89" },
    {:category => "Normal Menu", :name => "Double Cheeseburger", :price => "1.69" },
    {:category => "Normal Menu", :name => "Double Cheeseburger - Meal", :price => "4.69" },
    {:category => "Normal Menu", :name => "Classic Chicken (Grilled or Crispy)", :price => "4.49" },
    {:category => "Normal Menu", :name => "Classic Chicken (Grilled or Crispy) - Meal", :price => "6.29" },
    {:category => "Normal Menu", :name => "Southern Style Chicken", :price => "4.19" },
    {:category => "Normal Menu", :name => "Southern Style Chicken - Meal", :price => "5.99" },
    {:category => "Normal Menu", :name => "Bacon Clubhouse Burger", :price => "4.79" },
    {:category => "Normal Menu", :name => "Bacon Clubhouse Burger - Meal", :price => "6.59" },
    {:category => "Normal Menu", :name => "Premium Chicken Bacon Clubhouse (Grilled or Crispy)", :price => "4.79" },
    {:category => "Normal Menu", :name => "Premium Chicken Bacon Clubhouse (Grilled or Crispy) - Meal", :price => "6.59" },
    {:category => "Normal Menu", :name => "McChicken - Meal", :price => "3.99" },
    {:category => "Normal Menu", :name => "Chicken McNuggets 10 Piece", :price => "4.79" },
    {:category => "Normal Menu", :name => "Chicken McNuggets 10 Piece - Meal", :price => "6.59" },
    {:category => "Normal Menu", :name => "Chicken McNuggets-20 Piece", :price => "5.29" },
    {:category => "Extra Value Menu", :name => "Grilled Onion Cheddar Burger", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "McDouble", :price => "1.59" },
    {:category => "Extra Value Menu", :name => "McChicken", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Bacon Cheddar McChicken", :price => "2.19" },
    {:category => "Extra Value Menu", :name => "Buffalo Ranch McChicken", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Bacon Buffalo Ranch McChicken", :price => "2.19" },
    {:category => "Extra Value Menu", :name => "BBQ Ranch Burger", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Cheeseburger", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Double Cheeseburger", :price => "1.89" },
    {:category => "Extra Value Menu", :name => "Triple Cheeseburger", :price => "2.49" },
    {:category => "Extra Value Menu", :name => "Daily Double", :price => "2.19" },
    {:category => "Extra Value Menu", :name => "Jalapeño Double", :price => "2.19" },
    {:category => "Extra Value Menu", :name => "Bacon McDouble", :price => "2.19" },
    {:category => "Extra Value Menu", :name => "Parfait", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Side Salad", :price => "1.69" },
    {:category => "Extra Value Menu", :name => "3 Cookies", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Cone", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Apple Slices", :price => "1.19" },
    {:category => "Extra Value Menu", :name => "Mac Snack Wrap", :price => "1.79" },
    {:category => "Extra Value Menu", :name => "Chicken Snack Wrap (Ranch)", :price => "1.79" },
    {:category => "Salads", :name => "Southwest Salad (Grilled or Crispy)", :price => "5.19" },
    {:category => "Salads", :name => "Bacon Ranch Salad (Grilled or Crispy)", :price => "4.89" },
    {:category => "Drinks", :name => "Smoothies (Mango Pineapple, Strawberry Banana, or Blueberry Pomegranate)", :price => "2.99" },
    {:category => "Drinks", :name => "Frappe (Mocha, Caramel, or Chocolate Chip)", :price => "2.99" },
    {:category => "Drinks", :name => "Iced Coffee", :price => "1.99" },
    {:category => "Drinks", :name => "Sweet Tea", :price => "1.39" },
    {:category => "Drinks", :name => "Soft Drink", :price => "1.39" },
    {:category => "Drinks", :name => "Orange Juice", :price => "1.99" },
    {:category => "Drinks", :name => "Milk", :price => "1.19" },
    {:category => "Drinks", :name => "Dasani Water", :price => "1.19" },
    {:category => "Desserts", :name => "Shakes (Chocolate, Vanilla, or Strawberry)", :price => "2.79" },
    {:category => "Desserts", :name => "Sundae (Hot Fudge or Caramel)", :price => "1.29" },
    {:category => "Desserts", :name => "Apple Pie", :price => "1.19" },
    {:category => "Desserts", :name => "Cherry Pie", :price => "1.19" },
    {:category => "Desserts", :name => "Cone (Vanilla)", :price => "1.19" },
    {:category => "Desserts", :name => "McFlurry Snack Size", :price => "1.79" },
    {:category => "Desserts", :name => "McFlurry Regular", :price => "2.59" }]

@item_variations = [[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
[nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
[nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, 0, 0.64, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [-0.53, 0, 0.54, nil, nil, 0, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [-0.53, 0, 0.53, nil, nil, nil, nil, nil, 0, 0, 0, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [-0.22, 0, 0.21, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [-0.31, 0, 0.21, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [-0.31, 0, 0.21, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, 0, 0, 0],
    [-0.32, 0, 0.22, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [-0.43, 0, 0.43, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, 0, nil , nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, nil , nil, nil, nil, 0, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 0, 0, nil, nil, nil, nil, nil, nil]]


    ids_for_columns = @varHash.map{ |x| x[:vID]}
    
    @itemsWithVariations = []
    k = 0
    @items.each_with_index do |item, i|
      varHashForRowMinusPrice = @varHash.deep_dup
      varHashForRow = varHashForRowMinusPrice.each_with_index.map do |variation,j|
        if @item_variations[i][j] == nil
          nil
        else
          variation[:price] = @item_variations[i][j]
          variation
        end
      end
      varHashForRow.compact!
      item[:groupedVariations] = (varHashForRow.group_by { |x| x[:vID]}).values
      @itemsWithVariations.push item
    end
    for m in 0..(@itemsWithVariations.length-1)
      @itemsWithVariations[m][:id] = m
    end
    @categories = (@itemsWithVariations.group_by { |x| x[:category]}).values

    render 'chipotle'
  end

  def index
    
    @restaurants_with_menus = [
  		{
  			name:"McDonalds",
  			hours: "24 hours",
  			image: "http://i.imgur.com/cnCc7Jn.png",
  			menu: "http://www.theweazy.org/mcdonalds"
  		},{
  			name:  "Five Guys",
  			hours: "" ,
  			image: "http://i.imgur.com/tfAHtOT.png" ,
  			menu:  "http://www.theweazy.org/five_guys",
  			notes: "We delivery any prepared food."
  		},{
  			name:  "Chipotle",
  			hours: "" ,
  			image: "http://i.imgur.com/erZf8m1.png" ,
  			menu: "http://www.theweazy.org/chipotle" 
  		},{
  			name: "Little Caesar's" ,
  			hours: "" ,
  			image:  "http://i.imgur.com/0iE1P1N.jpg" ,
  			menu:  "http://www.theweazy.org/little_caesars"
  		},{
  			name: "Big Ten Burrito" ,
  			hours: "" ,
  			image: "http://i.imgur.com/G5IFxWY.png" ,
  			menu: "http://www.theweazy.org/big_ten_burrito" 
  		}
    ]
    
    
  	@restaurants1 = [{
  			name:  "Krogers",
  			hours: "" ,
  			image: "http://i.imgur.com/aMUgNaS.png" ,
  			menu:  "",
  			notes: "We delivery any prepared food."
  		},{
  			name: "Subway" ,
  			hours: "" ,
  			image: "http://i.imgur.com/PaZsVWx.jpg" ,
  			menu:  "http://www.fastfoodmenuprices.com/subway-prices/"
  		},{
  			name: "Wendy's",
  			hours:  "",
  			image:  "http://i.imgur.com/uCGO023.png",
  			menu:  "http://www.fastfoodmenuprices.com/wendys-prices/"
  		}
	]

	@restaurants2 = [
		{
  			name: "Taco Bell" ,
  			hours: "" ,
  			image: "http://i.imgur.com/4zIkrGS.png" ,
  			menu: "http://www.fastfoodmenuprices.com/taco-bell-prices/" 
  		},
  		{
  			name: "Starbucks" ,
  			hours: "" ,
  			image: "http://i.imgur.com/bdxfdKo.jpg" ,
  			menu: "http://www.fastfoodmenuprices.com/starbucks-prices/" 
  		},
  		{
  			name: "Burger King" ,
  			hours: "" ,
  			image: "http://i.imgur.com/vt50Cc3.png" ,
  			menu: "http://www.fastfoodmenuprices.com/burger-king-prices/" 
  		},
        {
  			name: "Pancheros" ,
  			hours: "" ,
  			image: "http://i.imgur.com/CbpZiHA.png" ,
  			menu: "http://pancheros.com/menu" 
  		},
  		{
  			name: "The Big Salad" ,
  			hours: "" ,
  			image: "http://i.imgur.com/ivCmZ6T.png" ,
  			menu: "https://s3.amazonaws.com/weazy/TheBigSalad.pdf" 
  		},
  		{
  			name: "Curry On" ,
  			hours: "" ,
  			image: "http://i.imgur.com/RjHy39d.jpg" ,
  			menu: "https://s3.amazonaws.com/weazy/CurryOn.pdf" 
  		}
  	]
  	@restaurants3 =	[
  		{
  			name: "Great Plains Burger" ,
  			hours: "" ,
  			image: "http://i.imgur.com/uyym5Jt.jpg" ,
  			menu: "http://www.greatplainsburger.com/fax-order.pdf" 
  		},{
  			name: "KFC" ,
  			hours: "" ,
  			image: "http://i.imgur.com/uH6wzbC.png" ,
  			menu: "http://www.fastfoodmenuprices.com/kfc-menu-prices/" 
  		}
	]
	         
  end
end
