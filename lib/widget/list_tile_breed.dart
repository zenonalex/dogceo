import 'package:casework/screens/dog_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ListTileBreed extends StatelessWidget {
  final String title;

  ListTileBreed({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4,
        child: ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => DogScreen(title: title)));
            },
            title: Text(
              title,
              style: TextStyle(fontSize: 20),
            )));
  }
}
