import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffc6dde3),
        automaticallyImplyLeading: false,
        title: const Text('Wallet', style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: Icon(Icons.cancel, size: 200,),
          ),
          const Center(
            child: Text('No Funds Available', style: TextStyle(fontSize: 24),),
          ),
          Center(
            child: TextButton(onPressed: (){},
              child: const Text('Load Wallet', style: TextStyle(color: Colors.blue),)),
          )
        ],
      ),
    );
  }
}
