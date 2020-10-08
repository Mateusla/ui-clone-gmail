import 'package:mobx/mobx.dart';
part 'main.screen.controller.g.dart';

class MainScreenController = _MainScreenControllerBase with _$MainScreenController;

abstract class _MainScreenControllerBase with Store {
  
  @observable
  bool visibleAppBar = true;
  @action
  void changeVisibleAppBar(bool value){visibleAppBar = value; print(value);}
}
