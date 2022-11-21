import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key, required String title}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffc6dde3),
        centerTitle: true,
        title: Text('Shopping Cart', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Center(
            child: Icon(Icons.remove_shopping_cart_sharp, size: 200,),
          ),
          Center(
            child: Text('No items added to shopping cart', style: TextStyle(fontSize: 22),),
          )
        ],
      ),

    );
  }
}
