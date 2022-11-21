import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hyde/constants/bottomnav.dart';
import 'package:hyde/constants/product container.dart';
import 'package:hyde/pages/cart.dart';
import 'package:hyde/pages/navbar.dart';


class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Color(0xffc6dde3),
        title: const Text('HYDE', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const Cart(title:'Cart');
            }));
          },
            icon: const Icon(Icons.shopping_cart, size: 30,),
            color: Colors.black,
            ),
    ]
    ),
        body:
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      height: 160,
                      alignment: Alignment.topLeft,
                      child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(width: 10,),
                        Prod('Clothes', 'clothes.jpg'),
                        const SizedBox(width: 15,),
                        Prod('Food', 'food.jpg'),
                        const SizedBox(width: 15,),
                        Prod('Devices', 'devices.jpeg'),
                        const SizedBox(width: 15,),
                        Prod('Beauty Products', 'Beauty.jpg'),
                        const SizedBox(width: 10,),
                      ],
            ),
                    ),
                  const SizedBox(height: 30,),
                  const Text(
                    'Featured Products',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                    Container(
                      height: 500,
                        child: ListView(
                          shrinkWrap: true,
                            children:[
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 10,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 10,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 10,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 10,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 10,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 10,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 10,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                              const SizedBox(height: 20,),
                              CustProd('jac', 'tyhf', 'pictures/hyde.jpg'),
                            ]
                        ),
                    ),
          ]
          ),
              ),
    );
  }
}


