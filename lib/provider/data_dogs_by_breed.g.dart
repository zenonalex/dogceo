// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_dogs_by_breed.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataDogsByBreed on _DataDogsByBreed, Store {
  final _$dogsAtom = Atom(name: '_DataDogsByBreed.dogs');

  @override
  List<Dogs> get dogs {
    _$dogsAtom.reportRead();
    return super.dogs;
  }

  @override
  set dogs(List<Dogs> value) {
    _$dogsAtom.reportWrite(value, super.dogs, () {
      super.dogs = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_DataDogsByBreed.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$loadDogsAsyncAction = AsyncAction('_DataDogsByBreed.loadDogs');

  @override
  Future<void> loadDogs(dynamic breed) {
    return _$loadDogsAsyncAction.run(() => super.loadDogs(breed));
  }

  @override
  String toString() {
    return '''
dogs: ${dogs},
isLoading: ${isLoading}
    ''';
  }
}
