import 'package:mobx/mobx.dart';
part 'future_controller.g.dart';

class FutureController = FutureControllerBase with _$FutureController;

abstract class FutureControllerBase with Store {
  @observable
  var nomeFuture = ObservableFuture.value('');
  //var nomeFuture = Future.value('').asObservable();

  Future<void> buscarNome() async {
    final buscarNomeFuture = Future.delayed(
      const Duration(seconds: 2),
      () => 'Guilherme Potter Petry',
    );
    nomeFuture = ObservableFuture(buscarNomeFuture);
  }
}
