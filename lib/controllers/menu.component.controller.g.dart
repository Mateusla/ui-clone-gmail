// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.component.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MenuComponentController on _MenuComponentControllerBase, Store {
  final _$isActiveAtom = Atom(name: '_MenuComponentControllerBase.isActive');

  @override
  bool get isActive {
    _$isActiveAtom.reportRead();
    return super.isActive;
  }

  @override
  set isActive(bool value) {
    _$isActiveAtom.reportWrite(value, super.isActive, () {
      super.isActive = value;
    });
  }

  @override
  String toString() {
    return '''
isActive: ${isActive}
    ''';
  }
}
