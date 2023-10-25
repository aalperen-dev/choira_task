import 'dart:async';
import 'package:choira_task/views/screens/onboarting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplasScreen extends StatelessWidget {
  const SplasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ));
    });
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/choira.png').animate().fadeOut(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            delay: const Duration(milliseconds: 800)),
      ),
    );
  }
}
