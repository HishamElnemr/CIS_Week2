import 'package:bmi_calculator/constatns.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChooseGenderWidget extends StatefulWidget {
   const ChooseGenderWidget({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  State<ChooseGenderWidget> createState() => _ChooseGenderWidgetState();
}

class _ChooseGenderWidgetState extends State<ChooseGenderWidget> {
  Color bgColor = kInactiveColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          bgColor = (bgColor == kInactiveColor) ? kActiveColor : kInactiveColor;
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.25,
        width: MediaQuery.of(context).size.width * .45,
        decoration: BoxDecoration(
          color: bgColor, 
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 75,
            ),
            Text(
              widget.text,
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
