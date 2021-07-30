import 'package:flutter/material.dart';
import 'package:messenger_ui/models/message_model.dart';

class Chat extends StatefulWidget {
  late final User user;
  Chat(this.user);
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
