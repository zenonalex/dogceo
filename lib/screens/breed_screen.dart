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

  @override
  Widget build(BuildContext context) {
    _breeds.loadBreed();
    return Scaffold(
      appBar: AppBar(
        title: Text('Raças'),
      ),
      body: Observer(
          builder: (_) => _breeds.isLoading
              ? Center(
                  child: _breeds.isStatusOk
                      ? CircularProgressIndicator()
                      : AlertDialog(
                          title: Text(
                              'Falha ao carregar lista. Verifique a sua conexão'),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  _breeds.loadBreed();
                                },
                                child: Text('Tentar novamente'))
                          ],
                        ),
                )
              : Center(
                  child: ListView.builder(
                    itemCount: _breeds.breeds.length,
                    itemBuilder: (ctx, index) {
                      return ListTileBreed(title: _breeds.breeds[index].name);
                    },
                  ),
                )),
    );
  }
}
