import 'package:mobx/mobx.dart';
part 'menu.component.controller.g.dart';

class MenuComponentController = _MenuComponentControllerBase with _$MenuComponentController;

abstract class _MenuComponentControllerBase with Store {
  
  @observable
  bool isActive = false;
  void changeIsActive() => isActive = !isActive;
}
