import 'package:flutter/material.dart';
import 'package:messenger_ui/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'chat ui challenge',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(primaryColor: Colors.red, accentColor: Color(0xFFFEF9EB)),
      home: Home(),
    );
  }
}
