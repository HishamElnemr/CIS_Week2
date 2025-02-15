import 'package:bmi_calculator/constatns.dart';
import 'package:bmi_calculator/cubits/counter_age_cubit/counter_age_cubit.dart';
import 'package:bmi_calculator/cubits/counter_age_cubit/counter_age_states.dart';
import 'package:bmi_calculator/widgets/counter_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAge extends StatelessWidget {
  const CounterAge({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterAgeCubit, CounterAgeStates>(
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width * .45,
          decoration: BoxDecoration(
            color: kInactiveColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Age',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                BlocProvider.of<CounterAgeCubit>(context).counter.toString(),
                style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CounterButtonWidget(
                    text: '-',
                    onPressed: () {
                      BlocProvider.of<CounterAgeCubit>(context).decrement();
                    },
                  ),
                  CounterButtonWidget(
                    text: '+',
                    onPressed: () {
                      BlocProvider.of<CounterAgeCubit>(context).increment();
                    },
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
