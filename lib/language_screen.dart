import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String? _selectedLanguage = "English"; // default

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1DD1A1),
      body: SafeArea(
        child: Column(
          children: [
            // Stack for back button + logo
            Stack(
              children: [
                // Top background placeholder
                Container(height: 120, color: Colors.transparent),

                // Back button
                Positioned(
                  top: 16,
                  left: 16,
                  child: CircleAvatar(
                    backgroundColor: const Color(0xFFE1FCF9),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

                // Logo
                Positioned(
                  top: 46,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE1FCF9),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/logo.png', height: 50),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // White card for language selection
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFFE0F7F4),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Select your language",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'HyperDeluxe',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),

                    // Language options
                    Column(
                      children: [
                        RadioListTile<String>(
                          title: const Text(
                            "සිංහල",
                            style: TextStyle(fontSize: 18),
                          ),
                          value: "Sinhala",
                          groupValue: _selectedLanguage,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: const Text(
                            "தமிழ்",
                            style: TextStyle(fontSize: 18),
                          ),
                          value: "Tamil",
                          groupValue: _selectedLanguage,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value;
                            });
                          },
                        ),
                        RadioListTile<String>(
                          title: const Text(
                            "English",
                            style: TextStyle(fontSize: 18),
                          ),
                          value: "English",
                          groupValue: _selectedLanguage,
                          activeColor: Colors.black,
                          onChanged: (value) {
                            setState(() {
                              _selectedLanguage = value;
                            });
                          },
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Next Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/role');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1DD1A1),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const Spacer(),

                    // Bottom illustration
                    Image.asset('assets/agriculture.png', height: 150),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
