import 'package:flutter/material.dart';
import 'package:messenger_ui/models/message_model.dart';
import 'package:messenger_ui/wigdets/category_selector.dart';
import 'package:messenger_ui/wigdets/favorirte_contact.dart';
import 'package:messenger_ui/wigdets/recentChats.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: null,
          color: Colors.white,
          iconSize: 30.0,
        ),
        title: Text(
          'Messenger app',
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              iconSize: 30.0,
              color: Colors.white)
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: Column(
              children: <Widget>[FavoriteContact(), RecentChats()],
            ),
          ))
        ],
      ),
    );
  }
}
