import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_freezed_event.dart';
part 'example_freezed_state.dart';
part 'example_freezed_bloc.freezed.dart';

class ExampleFreezedBloc extends Bloc<ExampleFreezedEvent, ExampleFreezedState> {
  ExampleFreezedBloc() : super(ExampleFreezedState.initial()) {
    on<_ExampleFreezedEventFindName>(_findNames);
    on<_ExampleFreezedEventAddName>(_addName);
    on<_ExampleFreezedEventRemoveName>(_removeNames);
  }

  FutureOr<void> _findNames(
    _ExampleFreezedEventFindName event,
    Emitter<ExampleFreezedState> emitter,
  ) async {
    emitter(ExampleFreezedState.loading());

    final names = [
      'Guilherme Potter Petry',
      'Academia do Flutter',
      'Rodrigo Rahman',
      'Dart',
      'Flutter',
      'Flutter Bloc',
    ];

    emitter(ExampleFreezedState.data(names: names));
  }

  FutureOr<void> _addName(
    _ExampleFreezedEventAddName event,
    Emitter<ExampleFreezedState> emitter,
  ) async {
    final names = state.maybeWhen(
      data: (names) => names,
      orElse: () => <String>[],
    );

    emitter(
        ExampleFreezedState.showBanner(names: names, message: 'Aguarde, nome sendo inserido...'));
    await Future.delayed(const Duration(seconds: 2));

    final newNames = [...names];
    newNames.add(event.name);

    emitter(ExampleFreezedState.data(names: newNames));
  }

  FutureOr<void> _removeNames(
    _ExampleFreezedEventRemoveName event,
    Emitter<ExampleFreezedState> emitter,
  ) async {
    final names = state.maybeWhen(
      data: (names) => names,
      orElse: () => <String>[],
    );

    final newNames = [...names];
    newNames.add(event.name);

    emitter(ExampleFreezedState.data(names: newNames));
  }
}
