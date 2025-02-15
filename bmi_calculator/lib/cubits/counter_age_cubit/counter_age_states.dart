class CounterAgeStates {}

class CounterAgeInitial extends CounterAgeStates {}

class CounterAgeIncrement extends CounterAgeStates 
{
  final int counter;
  CounterAgeIncrement(this.counter);
}

class CounterAgeDecrement extends CounterAgeStates 
{
  final int counter;
  CounterAgeDecrement(this.counter);
}