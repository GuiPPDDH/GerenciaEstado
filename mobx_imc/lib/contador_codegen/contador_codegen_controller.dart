import 'package:mobx/mobx.dart';
import 'package:mobx_imc/model/full_name.dart';

part 'contador_codegen_controller.g.dart';

class ContadorCodeGenController = _ContadorCodeGenControllerBase with _$ContadorCodeGenController;

abstract class _ContadorCodeGenControllerBase with Store {
  @observable
  int counter = 0;

  @observable
  var fullName = FullName(first: 'First', last: 'Last');

  @computed
  String get saudacao => 'Olá ${fullName.first} $counter';

  @action
  void increment() {
    counter++;
    fullName = fullName.copyWith(first: 'Guilherme', last: 'Potter Petry');
  }

  @action
  void changeName() {
    fullName = fullName.copyWith(first: 'Guilherme', last: '');
  }

  @action
  void rollbackName() {
    fullName = fullName.copyWith(first: 'First', last: 'Last');
  }
}
