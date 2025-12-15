import 'package:flutter/material.dart';
import 'studentpanel.dart';
import 'teacherpanel.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login(BuildContext context) {
    final email = emailController.text;
    final password = passwordController.text;

    if (email == "suriyaa869@gmail.com" && password == "LOQ@1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const StudentPanel()),
      );
    } else if (email == "saravanakumar.k.aiml.2023@snsct.org" &&
        password == "TUF@1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => const TeacherPanel()),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Invalid credentials")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Log in",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 20),

          const Text("Email"),
          TextField(controller: emailController),

          const SizedBox(height: 15),

          const Text("Password"),
          TextField(controller: passwordController, obscureText: true),

          const SizedBox(height: 20),

          SizedBox(
            width: double.infinity,
            height: 45,
            child: ElevatedButton(
              onPressed: () => login(context),
              child: const Text("Log in"),
            ),
          ),
        ],
      ),
    );
  }
}
