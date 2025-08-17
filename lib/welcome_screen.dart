import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1FCF9), // light green background
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20),

            // Main Image
            Image.asset(
              'assets/farmer.png', // <-- Replace with your farmer illustration
              height: 250,
            ),

            // Text
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black,
                        fontFamily: 'HyperDeluxe',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Wee Saviya !",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF1DD1A1),
                        fontFamily: 'HyperDeluxe',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  "\n\"From Field to Market, \n Your Agri-Mart Solution!\"",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontFamily: 'HyperDeluxe',
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            // Get Started Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/language',
                    ); // Navigate to next page
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1DD1A1), // teal button
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'HyperDeluxe',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
