import 'package:flutter/material.dart';
import 'package:forecastingapp/views/resetpasseord/reset_password_screen.dart';

class EmailResetPasswordScreen extends StatelessWidget {
  const EmailResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView(
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
                  top: 110,
                  left: 110,
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
                "Enter your password",
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            TextFormField(
              decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 500),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const ResetPasswordScreen(),
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
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 185, 185, 185),
                    borderRadius: BorderRadius.circular(15)),
                child: const Center(
                    child: Text(
                  'Reset password',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
            const SizedBox(
              height: 350,
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
                    size: 30,
                  ),
                  Text(
                    'Back to Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
