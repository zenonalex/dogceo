import 'package:casework/provider/dogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../widget/list_tile_dogs.dart';
import '../provider/data_dogs_by_breed.dart';

class DogScreen extends StatefulWidget {
  final String title;
  DogScreen({@required this.title});

  @override
  _DogScreenState createState() => _DogScreenState();
}

class _DogScreenState extends State<DogScreen> {
  final dog = DataDogsByBreed();
  ScrollController _scrollController = ScrollController();
  List<Dogs> _finalList = [];

  @override
  void initState() {
    dog.loadDogs(widget.title).then((value) {
      _finalList.addAll(dog.dogs);
    });
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _hasMore();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _hasMore() {
    setState(() {
      dog.loadDogs(widget.title);
      _finalList.addAll(dog.dogs);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Observer(
        builder: (_) => dog.isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                controller: _scrollController,
                itemCount: _finalList.length,
                itemBuilder: (ctx, index) {
                  return ListTileDogs(url: _finalList[index].url);
                },
              ),
      ),
    );
  }
}
