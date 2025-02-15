import 'package:bmi_calculator/constatns.dart';
import 'package:bmi_calculator/cubits/counter_height_cubit/counter_height_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomHeightWidget extends StatelessWidget {
  const CustomHeightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterHeightCubit, double>(
      builder: (context, state) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: kInactiveColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Height',
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                ' ${state.round()} cm',
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Slider(
                value: state,
                min: 1,
                max: 300,
                divisions: 100,
                thumbColor: kButtonColor,
                activeColor: kButtonColor,
                inactiveColor: Colors.grey,
                onChanged: (double val) {
                  context.read<CounterHeightCubit>().updateHeight(val);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
