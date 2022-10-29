import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(children: [
          Image.asset(
            'assets/logo.png',
            width: 200,
          ),
          const Text(
            'Forcasting',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          const Text(
            'Enter your email and password',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          TextFormField(
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
          )
        ]),
      ),
    );
  }
}
