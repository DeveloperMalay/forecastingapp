import 'package:flutter/material.dart';
import 'package:forecastingapp/views/signup/signupp_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color.fromARGB(255, 106, 202, 247), Color(0xff0c82df)],
          // colors: [ColorSwatch(primary value: Color(0xff03a9f4)), Color(0xff0c82df)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Stack(children: [
          Positioned(
            top: 60,
            child: Image.asset(
              'assets/world.png',
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: Container(
              height: 351,
              width: 350,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Column(children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Expore global map of wind, weather, and ocean conditions',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Planing your trip become more easier with ideate weather app. you can instantly see the whole word weather within few second',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const SizedBox(
                  height: 70,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const SignUpScreen(),
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
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 29, 174, 241),
                            Color.fromARGB(255, 18, 141, 235)
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                    child: const Center(
                      child: Text(
                        'Get started',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      'Log in',
                      style: TextStyle(color: Colors.blue, fontSize: 14),
                    ),
                  ],
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
