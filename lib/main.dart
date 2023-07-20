import 'package:coffeeshop/models/coffee_shop.dart';
import 'package:coffeeshop/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>CoffeeShop(),
    builder: (context, child) =>const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    ),
    );
    
  }
}
