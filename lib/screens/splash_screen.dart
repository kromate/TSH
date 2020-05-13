import 'package:TSH/screens/navigation_home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:TSH/screens/login.dart';

class Splash_Screen extends StatefulWidget {
  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  // @override
  // void initState() {

  //   super.initState();
  //   Future.delayed(
  //     Duration(seconds: 2),
  //     (){
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage(),
  //       )
  //       );
  //     }
  //   );
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[ Container(child: Image(image: AssetImage('Asset/splash.png',), ), width: 400, height: 300, 
      ),
      CircularProgressIndicator(backgroundColor: Colors.white,)
      ]),
      
    );
  }
}



class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, AsyncSnapshot<FirebaseUser> snapshot){
        if(snapshot.connectionState == ConnectionState.waiting)
          return Splash_Screen();
        if(!snapshot.hasData || snapshot.hasData == null)
          return LoginPage();
        return NavigationHomeScreen();
        
      }
    );
  }
}

