import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  const Edit({Key? key, required String title}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: const Text('Edit Profile', style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: const Color(0xffc6dde3),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
          margin: const EdgeInsets.fromLTRB(30, 20, 30, 10),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Name',
              hintText: 'Change Name',
            ),
          ),
        ),


        Container(
          margin: const EdgeInsets.fromLTRB(30, 2, 30, 10),
          child: const TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
                hintText: 'Change E-mail'
            ),
          ),
        ),

          Container(
            margin: const EdgeInsets.fromLTRB(30, 2, 30, 10),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Mobile Number',
                  hintText: 'Change Mobile Number'
              ),
            ),
          ),
          Container(
            child: TextButton(onPressed: () {},
                child: Container(
                    color: Colors.blue[100],
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                    margin: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                    child: const Center(child: Text('MAKE CHANGES', textAlign: TextAlign.center ,style: TextStyle(fontSize: 18, color: Colors.black),))

                )),
          ),

      ]),
    );
  }
}
