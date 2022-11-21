import 'package:flutter/material.dart';
import 'package:hyde/constants/bottomnav.dart';
import 'cart.dart';
import 'package:hyde/sidepages/edit.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('Profile', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Edit(title: 'Edit');
                }));
        }, icon: const Icon(Icons.edit, color: Colors.black,))],
        backgroundColor: const Color(0xffc6dde3),
      ),
      body: Column(
        children: const [
          Center(
            child: Icon(IconData(0xe743, fontFamily: 'MaterialIcons'), color: Colors.black, size: 170,),
          ),
          SizedBox(height: 30,),
          Center(
            child: Text('Kofi Asare-Amankwah', style: TextStyle( fontSize: 20,)),
          ),
          SizedBox(height: 15,),
          Center(
            child: Text('asareamankwah2@gmail.com', style: TextStyle( fontSize: 20,)),
          )
        ],
      ),
         );
  }
}
