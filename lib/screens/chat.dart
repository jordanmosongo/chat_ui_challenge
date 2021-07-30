import 'package:flutter/material.dart';
import 'package:messenger_ui/models/message_model.dart';
import 'package:messenger_ui/screens/home.dart';

class Chat extends StatefulWidget {
  late final User user;
  Chat(this.user);
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  Widget _buildMessage(Message chat, bool isMe) {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          margin: isMe
              ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0)
              : EdgeInsets.only(top: 8.0, bottom: 8.0),
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          decoration: BoxDecoration(
              color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
              borderRadius: isMe
                  ? BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0))
                  : BorderRadius.only(
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                chat.time,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(chat.text,
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
        !isMe
            ? IconButton(
                onPressed: () => {},
                icon: chat.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                color: chat.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.black,
              )
            : SizedBox.shrink()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Home()))
                },
            color: Colors.white,
            iconSize: 20.0),
        title: Text(
          widget.user.name,
          style:
              TextStyle(color: Theme.of(context).accentColor, fontSize: 24.0),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.more_horiz),
            color: Colors.white,
            iconSize: 30.0,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular((30.0)),
                  topRight: Radius.circular(30.0)),
              child: ListView.builder(
                  padding: EdgeInsets.only(top: 15.0),
                  itemCount: chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Message chat = chats[index];
                    final bool isMe = chat.sender.id == currentUser.id;
                    return _buildMessage(chat, isMe);
                  }),
            ),
          ))
        ],
      ),
    );
  }
}
