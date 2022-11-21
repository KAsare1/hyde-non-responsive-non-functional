import 'package:flutter/material.dart';


Widget Prod(String name, image) => InkWell(
    onTap: (){},
    child:   Container(
      width: 210,
      height: 100,
      child: ClipRRect( borderRadius: BorderRadius.circular(10),
      child: Image.asset('pictures/$image', fit: BoxFit.fill,),
    ),)
  );

Widget CustProd(String name, String price, String image) => InkWell(
  onLongPress: (){},
  onTap: (){},
  child: Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(18),
      color: const Color(0xffc6dde3),
      image: DecorationImage(image: AssetImage(image),
      fit: BoxFit.fitHeight,
      alignment: Alignment.topLeft)
    ),
    margin: const EdgeInsets.only(left: 10, right: 10),
    height: 80,
  ),
);

