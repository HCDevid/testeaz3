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

  def index
  	@restaurants1 = [
  		{
  			name:"McDonalds",
  			hours: "24 hours",
  			image: "http://i.imgur.com/cnCc7Jn.png",
  			menu: "http://www.fastfoodmenuprices.com/mcdonalds-prices/"
  		},{
  			name:  "Five Guys",
  			hours: "" ,
  			image: "http://i.imgur.com/tfAHtOT.png" ,
  			menu:  "http://i.imgur.com/Q946Qee.png",
  			notes: "We delivery any prepared food."
  		},{
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
  			name:  "Chipotle",
  			hours: "" ,
  			image:  "http://i.imgur.com/erZf8m1.png" ,
  			menu: "http://i.imgur.com/0HvYsfA.png" 
  		},{
  			name: "Wendy's",
  			hours:  "",
  			image:  "http://i.imgur.com/uCGO023.png",
  			menu:  "http://www.fastfoodmenuprices.com/wendys-prices/"
  		},{
  			name: "Little Caesar's" ,
  			hours: "" ,
  			image:  "http://i.imgur.com/0iE1P1N.jpg" ,
  			menu:  "http://www.fastfoodmenuprices.com/little-caesars-prices/"
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
  			name: "BTB Burrito" ,
  			hours: "" ,
  			image: "http://i.imgur.com/G5IFxWY.png" ,
  			menu: "http://www.btbburrito.com/btb-menu" 
  		},{
  			name: "KFC" ,
  			hours: "" ,
  			image: "http://i.imgur.com/uH6wzbC.png" ,
  			menu: "http://www.fastfoodmenuprices.com/kfc-menu-prices/" 
  		}
	]
	         
  end
end
