import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/choose_gender_widget.dart';
import 'package:bmi_calculator/widgets/counter_age.dart';
import 'package:bmi_calculator/widgets/counter_widget.dart';
import 'package:bmi_calculator/widgets/custom_height_widget.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChooseGenderWidget(
                  icon: Icons.male_rounded,
                  text: 'Male',
                ),
                ChooseGenderWidget(
                  icon: Icons.female_rounded,
                  text: 'Female',
                ),
              ],
            ),
         const   SizedBox(height: 16),
           const CustomHeightWidget(),
           const SizedBox(height: 16),
          const  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CounterWidget(),
                CounterAge(),
              ],
            ),
            const SizedBox(height: 16),
            CalculateButton(
              onPressed: () 
              {
                Navigator.pushNamed(context, '/result');
              }, text: 'Calculate',
            ),
          ],
        ),
      ),
    );
  }
}
