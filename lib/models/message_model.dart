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
final User currentUser = new User(1, 'Jordan', 'assets/images/second.jpg');
//Some dummy users
final User emminence = new User(2, 'Emminence', 'assets/images/third.jpg');
final User glody = new User(2, 'Glody', 'assets/images/third.jpg');
final User gloire = new User(2, 'Gloire', 'assets/images/third.jpg');
final User john = new User(2, 'John', 'assets/images/third.jpg');

//Some messges as chats on home screen
List<Message> chats = [
  Message(currentUser, '4h30', 'Hi! my name\'s Jordan', false, true),
  Message(glody, '4h30', 'Hi! my name\'s Diglo', false, true),
  Message(gloire, '4h30', 'Hi! my name\'s Diglo', false, true),
  Message(john, '4h30', 'Hi! my name\'s Diglo', false, true),
];
