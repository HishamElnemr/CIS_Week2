import 'dart:math';
import 'package:bmi_calculator/constatns.dart';
import 'package:bmi_calculator/cubits/counter_height_cubit/counter_height_cubit.dart';
import 'package:bmi_calculator/cubits/counter_weight_cubit/counter_weight_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  // دالة لتحديد الحالة واللون والوصف
  Map<String, dynamic> getBmiCategory(double bmi) {
    if (bmi < 18.5) {
      return {
        'category': 'Underweight',
        'color': Colors.blue,
        'description': 'You have a lower than normal body weight',
      };
    } else if (bmi < 25 && bmi >= 18.5) {
      return {
        'category': 'Normal',
        'color': Colors.green,
        'description': 'You have a normal body weight',
      };
    } else if (bmi < 30 && bmi >= 25) {
      return {
        'category': 'Overweight',
        'color': Colors.orange,
        'description': 'You have a higher than normal body weight',
      };
    } else {
      return {
        'category': 'Obese',
        'color': Colors.red,
        'description': 'You may need medical attention',
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    final weight = BlocProvider.of<CounterWeightCubit>(context).counter;
    final heightInCm = BlocProvider.of<CounterHeightCubit>(context).state;
    final heightInMeter = heightInCm / 100;
    double bmi = weight / pow(heightInMeter, 2);

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: kInactiveColor,
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                getBmiCategory(bmi)['category'],
                style: TextStyle(
                  fontSize: 24,
                  color: getBmiCategory(bmi)['color'],
                  fontWeight: FontWeight.bold,
                ),
              ),
      
              Text(
                bmi.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
      
              // الوصف
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  getBmiCategory(bmi)['description'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
