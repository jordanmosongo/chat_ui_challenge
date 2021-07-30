import 'package:flutter/material.dart';
import 'package:messenger_ui/models/message_model.dart';
import 'package:messenger_ui/screens/chat.dart';

class FavoriteContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Favorite contact',
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.1)),
                IconButton(
                  onPressed: null,
                  icon: Icon(Icons.more_horiz),
                  iconSize: 30.0,
                  color: Colors.blueGrey,
                )
              ],
            )),
        Container(
          height: 120.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: 10.0),
              itemCount: favorites.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => Chat(favorites[index]))),
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Column(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35.0,
                          backgroundImage:
                              AssetImage(favorites[index].imageUrl),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        Text(
                          favorites[index].name,
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
