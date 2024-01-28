import 'dart:async';
import 'package:bloc/bloc.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleInitialState()) {
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeNames);
    on<ExampleAddNameEvent>(_addName);
  }

  FutureOr<void> _findNames(
    ExampleFindNameEvent event,
    Emitter<ExampleState> emitter,
  ) async {
    final names = [
      'Guilherme Potter Petry',
      'Academia do Flutter',
      'Rodrigo Rahman',
      'Dart',
      'Flutter',
      'Flutter Bloc',
    ];

    emitter(ExampleStateData(names: names));
  }

  FutureOr<void> _addName(
    ExampleAddNameEvent event,
    Emitter<ExampleState> emitter,
  ) async {
    final stateDesafio = state;

    if (stateDesafio is ExampleStateData) {
      final names = [...stateDesafio.names];
      names.add(event.name);
      emitter(ExampleStateData(names: names));
    }
  }

  FutureOr<void> _removeNames(
    ExampleRemoveNameEvent event,
    Emitter<ExampleState> emitter,
  ) async {
    final stateExample = state;

    if (stateExample is ExampleStateData) {
      final names = [...stateExample.names];
      names.retainWhere((element) => element != event.name);
      emitter(ExampleStateData(names: names));
    }
  }
}
