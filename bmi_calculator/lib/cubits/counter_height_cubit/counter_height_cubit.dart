// ملف: counter_height_cubit.dart
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterHeightCubit extends Cubit<double> {
  CounterHeightCubit() : super(55.0); 

  void updateHeight(double newValue) {
    emit(newValue); 
  }
}
