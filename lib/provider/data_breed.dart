import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';
import 'dart:convert';

import './breed.dart';
part 'data_breed.g.dart';

class DataBreed = _DataBreed with _$DataBreed;

abstract class _DataBreed with Store {
  final _breedUrl = 'https://dog.ceo/api/breeds/list/all';

  @observable
  List<Breed> breeds = [];
  @observable
  bool isLoading = true;
  @observable
  bool isStatusOk = true;

  @action
  Future<void> loadBreed() async {
    isLoading = true;
    try {
      final response = await http.get(Uri.parse(_breedUrl));
      Map<String, dynamic> body = json.decode(response.body);
      Map<String, dynamic> data = body['message'];

      if (data != null) {
        data.forEach((key, value) {
          breeds.add(Breed(name: key, subBreed: value));
        });
      }

      isLoading = false;

      print('Carregou raças');
    } catch (e) {
      print('Erro de conexão');
      isStatusOk = false;
      print(isStatusOk);
    }
    return Future.value();
  }
}
