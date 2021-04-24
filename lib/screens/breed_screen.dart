import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../provider/data_breed.dart';
import '../widget/list_tile_breed.dart';

class BreedScreen extends StatefulWidget {
  @override
  _BreedScreenState createState() => _BreedScreenState();
}

class _BreedScreenState extends State<BreedScreen> {
  final _breeds = DataBreed();
  // List<Breed> listedBreeds = [];
  // bool isLoading = true;

  // @override
  // void initState() {
  //   _breeds.loadBreed().then((value) {
  //     listedBreeds = _breeds.breeds;
  //     isLoading = false;
  //     setState(() {});
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    _breeds.loadBreed();
    return Scaffold(
        appBar: AppBar(
          title: Text('Raças'),
        ),
        body: Observer(
          builder: (_) => _breeds.isLoading
              ? Center(child: CircularProgressIndicator())
              : Center(
                  child: ListView.builder(
                    itemCount: _breeds.breeds.length,
                    itemBuilder: (ctx, index) {
                      return ListTileBreed(title: _breeds.breeds[index].name);
                    },
                  ),
                ),
        ));
  }
}
