import 'package:coffeeshop/coffee_tile.dart';
import 'package:coffeeshop/models/coffee.dart';
import 'package:coffeeshop/models/coffee_shop.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
// add coffee to cart

void addTocart(coffee coffees){
  //add to cart
  Provider.of<CoffeeShop>(context, listen:false).additemTocart(coffees);

  //let user know it add been successfully added
  showDialog(context: context, builder: (context)=>AlertDialog(
    title: Text('Successfully added to cart'),
  ));
}

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading message
              Text(
                'How would you like your coffee?',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),

              //list of coffees
              Expanded(child: ListView.builder(
                itemCount: value.coffeeShop.length,
                itemBuilder: (context, index) {
                // get individual coffee
                coffee eachCoffee = value.coffeeShop[index];

                //return
                return CoffeeTile(coffees: eachCoffee,
                icon: Icon(Icons.add),
                onPressed: ()=>addTocart(eachCoffee),
                );
              }))
            ],
          ),
        ),
      ),
    );
  }
}
