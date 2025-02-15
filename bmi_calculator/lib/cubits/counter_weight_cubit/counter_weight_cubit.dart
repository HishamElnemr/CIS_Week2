import 'package:bmi_calculator/cubits/counter_weight_cubit/counter_weight_cubit_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterWeightCubit extends Cubit<CounterWeightCubitStates> {
  CounterWeightCubit() : super(CounterWeightCubitInitial());
  int counter = 30;
  void increment() {
    counter++;
    emit(CounterWeightCubitIncrement(counter));
  }

  void decrement() {
    counter--;
    emit(CounterWeightCubitDecrement(counter));
  }
}
