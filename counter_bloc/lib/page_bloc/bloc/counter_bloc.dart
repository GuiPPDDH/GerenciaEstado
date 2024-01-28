import 'package:bloc/bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterStateInitial()) {
    on<CounterIncrement>(_increment);
    on<CounterDecrement>(_decrement);
  }

  void _increment(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(
      CounterStateData(state.counter + 1),
    );
  }

  void _decrement(CounterEvent event, Emitter<CounterState> emitter) {
    emitter(
      CounterStateData(state.counter - 1),
    );
  }
}
