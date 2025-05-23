import 'package:bus_app/widgets/bus_search_app.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Added Scaffold for better UI handling
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: const Color(0xFFFF6260),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 480),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: const Color(0xFFFF6260),
                    padding: const EdgeInsets.fromLTRB(43, 348, 43, 74),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'build/flutter_assets/assets/images/green_bus.png',
                          width: 223,
                          fit: BoxFit.contain,
                        ),
                        const Spacer(), // Properly placed Spacer
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BusSearchApp()),
                            );
                          },
                          color: const Color(0xFFF5A522),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 70,
                            vertical: 14,
                          ),
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Ubuntu',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
