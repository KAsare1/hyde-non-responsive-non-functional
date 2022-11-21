import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hyde/pages/openpage.dart';
import 'package:hyde/pages/loading.dart.';
import 'package:hyde/pages/product.dart';
import 'package:hyde/pages/home.dart';
import 'package:hyde/pages/profile.dart';
import 'package:hyde/pages/wallet.dart';
import 'constants/bottomnav.dart';
import 'package:hyde/pages/navbar.dart';
import 'package:hyde/pages/cart.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

  routes: {
    '/': (context) => const Home(),
    '/nav' : (context) => const Navigation(),
  },
));
