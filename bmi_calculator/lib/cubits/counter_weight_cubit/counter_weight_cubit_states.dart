class CounterWeightCubitStates {}

class CounterWeightCubitInitial extends CounterWeightCubitStates {}

class CounterWeightCubitIncrement extends CounterWeightCubitStates {
  final int counter;
  CounterWeightCubitIncrement(this.counter);
}

class CounterWeightCubitDecrement extends CounterWeightCubitStates {
  final int counter;
  CounterWeightCubitDecrement(this.counter);
}
