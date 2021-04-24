import 'package:flutter/material.dart';

class ListTileDogs extends StatelessWidget {
  final String url;
  ListTileDogs({@required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(url),
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
