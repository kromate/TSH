import 'package:TSH/screens/help_screen.dart';
import 'package:flutter/material.dart';
import 'package:TSH/drawer/custom_drawer/home_drawer.dart';
import 'feedback_screen.dart';
import 'invite_friend_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = MyHomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Student Hub'),
        elevation: 1.0,
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<int>(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Text("Help"),
              ),
              PopupMenuItem(
                value: 2,
                child: Text("Feedback"),
              ),
              PopupMenuItem(
                value: 3,
                child: Text("Invite"),
              ),
            ],

            onCanceled: () {
              print("You have canceled the menu.");
            },
            onSelected: (value) {
              if (value == 1){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HelpScreen(),));
              }
              else if (value == 2){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> FeedbackScreen(),));
              }
              else if (value == 3){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> InviteFriend(),));
              }
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Recent Contents',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

