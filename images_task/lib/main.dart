import 'package:flutter/material.dart';
import 'package:images_task/home_view.dart';

void main() {
  runApp(const ImageTask());
}

class ImageTask extends StatelessWidget {
  const ImageTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}