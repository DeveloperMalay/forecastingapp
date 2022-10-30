import 'package:flutter/material.dart';
import 'package:forecastingapp/views/verifyemail/verify_email_screen.dart';

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
        child: ListView(children: [
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
                left: 120,
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
          const Center(
            child: Text(
              'Enter your email and password',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 49,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15))),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const VerifyEmailScreen(),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween<Offset>(
                              begin: const Offset(1, 0), end: Offset.zero)
                          .animate(animation),
                      child: child,
                    );
                  },
                ),
              );
            },
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 185, 185, 185),
                  borderRadius: BorderRadius.circular(15)),
              child: const Center(
                  child: Text(
                'Continue',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text(
                'By registering you agree to the Forcasting.',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                'Terms of Use',
                style: TextStyle(
                  fontSize: 12,
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -2))],
                  decorationThickness: 3,
                  color: Colors.transparent,
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'and',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Text(
                'Privacy Policy.',
                style: TextStyle(
                  fontSize: 12,
                  shadows: [Shadow(color: Colors.black, offset: Offset(0, -2))],
                  decorationThickness: 3,
                  decorationColor: Colors.black,
                  color: Colors.transparent,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Already have an Account?',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Login',
                style: TextStyle(
                  shadows: [Shadow(color: Colors.blue, offset: Offset(0, -3))],
                  decorationThickness: 3,
                  color: Colors.transparent,
                  fontWeight: FontWeight.bold,
                  decorationColor: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
