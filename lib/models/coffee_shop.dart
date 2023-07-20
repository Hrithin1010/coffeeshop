import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';


class CoffeeShop extends ChangeNotifier{
  //coffee for sale list
  final List<coffee> _shop = [
    
    coffee(name: 'Black Coffee', price: '60', images: 'assets/images/coffee.png'),

    coffee(name: 'Cappuccino', price: '150', images: 'assets/images/latte.png'),
    coffee(name: 'Espresso', price: '100', images: 'assets/images/expresso.png'),
     coffee(name: 'Iced Coffee', price: '120', images: 'assets/images/ice-coffee.png'),
  ];

//user cart
List<coffee>_userCart=[];

  //get coffee list
  List<coffee>get coffeeShop=>_shop;

  //get user cart
List<coffee>get userCart=>_userCart;
  //add item to cart
  void additemTocart(coffee Coffeecart ){
    _userCart.add(Coffeecart);
    notifyListeners();
  }

  //remove item from cart

  void removeItemFromCart(coffee Coffeecart){
    _userCart.remove(Coffeecart);
    notifyListeners();
  }
}
