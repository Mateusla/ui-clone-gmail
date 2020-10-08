// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.screen.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainScreenController on _MainScreenControllerBase, Store {
  final _$visibleAppBarAtom =
      Atom(name: '_MainScreenControllerBase.visibleAppBar');

  @override
  bool get visibleAppBar {
    _$visibleAppBarAtom.reportRead();
    return super.visibleAppBar;
  }

  @override
  set visibleAppBar(bool value) {
    _$visibleAppBarAtom.reportWrite(value, super.visibleAppBar, () {
      super.visibleAppBar = value;
    });
  }

  final _$_MainScreenControllerBaseActionController =
      ActionController(name: '_MainScreenControllerBase');

  @override
  void changeVisibleAppBar(bool value) {
    final _$actionInfo = _$_MainScreenControllerBaseActionController
        .startAction(name: '_MainScreenControllerBase.changeVisibleAppBar');
    try {
      return super.changeVisibleAppBar(value);
    } finally {
      _$_MainScreenControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
visibleAppBar: ${visibleAppBar}
    ''';
  }
}
