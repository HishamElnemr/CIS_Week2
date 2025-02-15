class CounterHeightStates {}

class CounterHeightInitial extends CounterHeightStates {}
class CounterHeight extends CounterHeightStates 
{
  final double counter;

  CounterHeight(this.counter);
}