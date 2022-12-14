import 'package:flutter/material.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
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
                top: 115,
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
          const SizedBox(
            height: 150,
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
            ),
          ),
          const Text(
            "Verify your email",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "We have successfully submitted your\n request for the tour of Green Garden\n Aparment. You’ll be updated soon.",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const SizedBox(
            height: 150,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.chevron_left,
                  size: 40,
                ),
                Text(
                  'Back to Signup',
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
