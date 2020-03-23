import 'package:flutter/material.dart';
import 'dart:async';
import 'package:TSH/screens/login.dart';

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState() {

    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage(),
        )
        );
      }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(child: Container(child: Image(image: AssetImage('Asset/splash.png',), ), width: 300, height: 200,
      ),
      ),
      
    );
  }
}