import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 260,
                height: 160,
              ),
            ),
            const Positioned(
              top: 105,
              left: 140,
              child: Text(
                'Forcasting',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Container(
            padding: const EdgeInsets.all(40),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ellipse.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const Icon(
              Icons.email_outlined,
              color: Colors.white,
              size: 70,
            ))
      ]),
    );
  }
}
