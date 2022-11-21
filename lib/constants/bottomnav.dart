import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hyde/pages/openpage.dart';
import 'package:hyde/pages/profile.dart';
import 'package:hyde/pages/home.dart';
import 'package:hyde/pages/wallet.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;


  void _navigateBar(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  final screens = [
    const User(),
    const Wallet(),
    const Profile()
  ];

  @override
    Widget build(BuildContext context){
  return Scaffold(
    body: screens[_selectedIndex],
bottomNavigationBar: GNav(
              style: GnavStyle.google,
              selectedIndex: _selectedIndex,
              curve: Curves.easeInQuad,
              gap: 10,
              onTabChange: _navigateBar,
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey,
              tabBorderRadius: 1,
              padding: const EdgeInsets.all(15),
              tabs: const [
                GButton(icon: Icons.home, text: 'Home',),
                GButton(icon: Icons.wallet, text: 'Wallet',),
                GButton(icon: Icons.person, text: 'Profile',),
              ],
            ),
          );
  }
}