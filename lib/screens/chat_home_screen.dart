import 'package:flutter/material.dart';
import 'package:TSH/utils&widget/category_selector.dart';
import 'package:TSH/utils&widget/favorite_contacts.dart';
import 'package:TSH/utils&widget/recent_chats.dart';

class ChatScreenHome extends StatefulWidget {
  @override
  _ChatScreenHomeState createState() => _ChatScreenHomeState();
}

class _ChatScreenHomeState extends State<ChatScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[700],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[700],
        title: Center(
          child: Text(
            'Chats',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color:  Colors.deepPurple[500],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
