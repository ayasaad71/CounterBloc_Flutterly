import 'dart:ffi';

import 'package:counter_flutterly/bloc/cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterStates(counterValue: 0));

  void increment() => emit(CounterStates(counterValue: state.counterValue + 1  ));

  void decrement() => emit(CounterStates(counterValue: state.counterValue - 1));


}