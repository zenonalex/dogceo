import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'dart:convert';

import './dogs.dart';
part 'data_dogs_by_breed.g.dart';

class DataDogsByBreed = _DataDogsByBreed with _$DataDogsByBreed;

abstract class _DataDogsByBreed with Store {
  final _dogsUrl = "https://dog.ceo/api/breed";

  @observable
  List<Dogs> dogs = [];
  @observable
  bool isLoading = true;
  //List<Dogs> get dogs => [..._dogs];

  @action
  Future<void> loadDogs(breed) async {
    final response =
        await http.get(Uri.parse("$_dogsUrl/$breed/images/random/10"));
    Map<String, dynamic> body = json.decode(response.body);
    Map<String, dynamic> data = body;
    List<String> dataDog = List<String>.from(data['message']);
    print(dataDog);
    dogs.clear();

    if (data != null) {
      dataDog.forEach((value) {
        dogs.add(Dogs(url: value));
      });
    }

    if (dogs != []) {
      isLoading = false;
    }

    return Future.value();
  }
}
