import 'package:bmi_calculator/cubits/counter_age_cubit/counter_age_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAgeCubit extends Cubit<CounterAgeStates> {
  int counter = 18;
  CounterAgeCubit() : super(CounterAgeInitial());
  void increment() {
    counter++;
    emit(CounterAgeIncrement(counter));
  }

  void decrement() {
    counter--;
    emit(CounterAgeDecrement(counter));
  }
}
