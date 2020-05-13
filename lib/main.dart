
import 'package:TSH/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'utils&widget/auth.dart';

import 'package:TSH/screens/splash_screen.dart';




void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Splash_Screen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
    );
  }
}

