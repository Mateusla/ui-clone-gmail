// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email.item.component.comtroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmailItemComponentController
    on _EmailItemComponentControllerBase, Store {
  final _$favEmailAtom =
      Atom(name: '_EmailItemComponentControllerBase.favEmail');

  @override
  bool get favEmail {
    _$favEmailAtom.reportRead();
    return super.favEmail;
  }

  @override
  set favEmail(bool value) {
    _$favEmailAtom.reportWrite(value, super.favEmail, () {
      super.favEmail = value;
    });
  }

  final _$_EmailItemComponentControllerBaseActionController =
      ActionController(name: '_EmailItemComponentControllerBase');

  @override
  void changeFavEmail() {
    final _$actionInfo = _$_EmailItemComponentControllerBaseActionController
        .startAction(name: '_EmailItemComponentControllerBase.changeFavEmail');
    try {
      return super.changeFavEmail();
    } finally {
      _$_EmailItemComponentControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
favEmail: ${favEmail}
    ''';
  }
}
