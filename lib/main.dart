import 'package:flutter/material.dart';
import 'User.dart';
import 'user_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<User> users = [
    User(name: "Ram", fruit: "apple"),
    User(name: "Sita", fruit: "banana"),
    User(name: "Hari", fruit: "mango"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('User List'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: users.map((user) => UserCard(
            user: user,
          delete: (){
              setState(() {
                users.remove(user);
              });
          }
        )).toList(),
      ),
    );
  }
}


