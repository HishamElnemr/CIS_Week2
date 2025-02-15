import 'package:flutter/material.dart';
import 'package:note_app/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ToDo List',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway',
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF4368FF),
      ),
      body: const Center(
        child: HomeViewBody(),
      ),
    );
  }
}
