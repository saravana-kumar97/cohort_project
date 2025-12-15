import 'package:flutter/material.dart';
import 'login.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.white],
          begin: Alignment.center,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: SingleChildScrollView(
          child: LoginForm(), // ✅ embedded login
        ),
      ),
    );
  }
}
