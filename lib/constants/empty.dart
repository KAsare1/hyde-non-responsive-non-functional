import 'package:flutter/material.dart';

late String name;
late String icon;

Empty emp = const Empty();



class Empty extends StatefulWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  State<Empty> createState() => _EmptyState();
}

class _EmptyState extends State<Empty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffc6dde3),
        centerTitle: true,
        title: Text(name, style: const TextStyle( color: Colors.black),),
      ),
      body: const Center(child: Text('NOTHING TO SHOW', style: TextStyle(fontSize: 30),)),
    );
  }
}
