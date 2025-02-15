import 'package:bmi_calculator/constatns.dart';
import 'package:bmi_calculator/cubits/counter_age_cubit/counter_age_cubit.dart';
import 'package:bmi_calculator/cubits/counter_height_cubit/counter_height_cubit.dart';
import 'package:bmi_calculator/cubits/counter_weight_cubit/counter_weight_cubit.dart';
import 'package:bmi_calculator/views/home_view.dart';
import 'package:bmi_calculator/views/result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterWeightCubit(),
        ),
        BlocProvider(
          create: (context) => CounterAgeCubit(),
        ),
        BlocProvider(
          create: (context) => CounterHeightCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          '/result': (context) => const ResultView(),
        },
        home: const HomeView(),
      ),
    );
  }
}
