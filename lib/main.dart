import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'language_screen.dart';
import 'role_selection_screen.dart';
import 'registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/language': (context) => const LanguageScreen(),
        '/role': (context) => const RoleSelectionScreen(),
        '/register': (context) => const RegistrationScreen(),
      },
    );
  }
}
