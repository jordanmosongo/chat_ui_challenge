class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;
  Message(this.sender, this.time, this.text, this.isLiked, this.unread);
}

class User {
  final int id;
  final String name;
  final String imageUrl;
  User(this.id, this.name, this.imageUrl);
}

//Create the current user
final User currentUser = new User(1, 'Jordan', 'images/third.jpg');
//Some dummy users
final User emminence = new User(2, 'Emminence', 'images/third.jpg');
final User glody = new User(3, 'Glody', 'images/third.jpg');
final User gloire = new User(4, 'Gloire', 'images/third.jpg');
final User john = new User(5, 'John', 'images/third.jpg');

List<User> favorites = [emminence, glody, gloire, john, gloire, emminence];

//Some messges as chats on home screen
List<Message> chats = [
  Message(
      currentUser,
      '4h30',
      'Hi! my name\'s Jordan and I am the one who will change this country',
      false,
      true),
  Message(glody, '4h30', 'Hi! my name\'s Diglo', false, true),
  Message(gloire, '4h30', 'Hi! my name\'s Diglo', false, false),
  Message(john, '4h30', 'Hi! my name\'s Diglo', false, true),
  Message(emminence, '4h30', 'Hi! my name\'s Diglo', false, false),
  Message(glody, '4h30', 'Hi! my name\'s Diglo', false, true),
  Message(gloire, '4h30', 'Hi! my name\'s Diglo', false, true),
  Message(john, '4h30', 'Hi! my name\'s Diglo', false, true),
  Message(emminence, '4h30', 'Hi! my name\'s Diglo', false, true),
];
