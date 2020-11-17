import 'package:mobx/mobx.dart';
part 'email.item.component.controller.g.dart';

class EmailItemComponentController = _EmailItemComponentControllerBase with _$EmailItemComponentController;

abstract class _EmailItemComponentControllerBase with Store {
  
  @observable
  bool favEmail = false;
  @action
  void changeFavEmail() => favEmail = !favEmail;
}
