import 'package:coffeeshop/bottomnavbar.dart';
import 'package:coffeeshop/pages/cart_page.dart';
import 'package:coffeeshop/pages/shop_page.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  //navigate bottom bar

  int _selectedIndex =0;
  void navigationbottombar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  final List<Widget>_pages=[
    //shop page
    shopPage(),

    //cartPage
    cartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: bottomnavbar(
        onTabChange: (index)=>navigationbottombar(index),
      ),
      body: _pages[_selectedIndex],
      
    );
  }
}