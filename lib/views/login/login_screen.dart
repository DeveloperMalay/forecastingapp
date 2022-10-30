import 'package:flutter/material.dart';
import 'package:forecastingapp/views/emailresetpassword/email_reset_password.dart';
import 'package:forecastingapp/views/success/success_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              const Text('Remember me'),
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const SuccessScreen(),
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
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  transitionDuration: const Duration(milliseconds: 500),
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      const EmailResetPasswordScreen(),
                  // const SuccessScreen(),
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
            child: const Center(
              child: Text(
                'Forgot Password ?',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't have an Account?",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Signup',
                  style: TextStyle(
                    shadows: [
                      Shadow(color: Colors.blue, offset: Offset(0, -3))
                    ],
                    decorationThickness: 3,
                    color: Colors.transparent,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
