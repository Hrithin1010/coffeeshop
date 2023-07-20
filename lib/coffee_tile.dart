
import 'package:coffeeshop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {

final coffee coffees;
 void Function()? onPressed;

 final Widget icon;

  CoffeeTile({super.key, required this.coffees,required this.onPressed,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],borderRadius: BorderRadius.circular(12)
      ),margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),
      child: ListTile(
        title: Text(coffees.name),
        subtitle: Text(coffees.price),
        leading: Image.asset(coffees.images),
        trailing: IconButton(icon: Icon(Icons.add),
        onPressed:onPressed ,),
      ),
    );
  }
}