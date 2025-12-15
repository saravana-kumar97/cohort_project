import 'package:flutter/material.dart';
import 'gradientcontainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Eval X",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ),
        body: GradientContainer(),
      ),
    ),
  );
}
