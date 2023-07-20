import 'package:coffeeshop/coffee_tile.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class cartPage extends StatefulWidget {
  const cartPage({super.key});

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
// remove item from cart
  void removeItemFromCart(coffee coffees) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemFromCart(coffees);
  }

  //pay button tapped
  void payNow() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Text(
                    "Your Cart",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  //list of cart items
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.userCart.length,
                        itemBuilder: (context, index) {
                          // get individual cart items
                          coffee eachCoffee = value.userCart[index];

                          //return coffee title
                          return CoffeeTile(
                              coffees: eachCoffee,
                              onPressed: () => removeItemFromCart(eachCoffee),
                              icon: Icon(Icons.delete_outline));
                        }),
                  ),
                  //pay button
                  GestureDetector(
                    onTap: payNow,
                    child: Container(
                      padding: EdgeInsets.all(25),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.brown,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        'Pay Now',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ],
              ),
            )));
  }
}
