// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_breed.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataBreed on _DataBreed, Store {
  final _$breedsAtom = Atom(name: '_DataBreed.breeds');

  @override
  List<Breed> get breeds {
    _$breedsAtom.reportRead();
    return super.breeds;
  }

  @override
  set breeds(List<Breed> value) {
    _$breedsAtom.reportWrite(value, super.breeds, () {
      super.breeds = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_DataBreed.isLoading');

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

  final _$isStatusOkAtom = Atom(name: '_DataBreed.isStatusOk');

  @override
  bool get isStatusOk {
    _$isStatusOkAtom.reportRead();
    return super.isStatusOk;
  }

  @override
  set isStatusOk(bool value) {
    _$isStatusOkAtom.reportWrite(value, super.isStatusOk, () {
      super.isStatusOk = value;
    });
  }

  final _$loadBreedAsyncAction = AsyncAction('_DataBreed.loadBreed');

  @override
  Future<void> loadBreed() {
    return _$loadBreedAsyncAction.run(() => super.loadBreed());
  }

  @override
  String toString() {
    return '''
breeds: ${breeds},
isLoading: ${isLoading},
isStatusOk: ${isStatusOk}
    ''';
  }
}
