import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

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

            const SizedBox(height: 10),

            // Title
            const Text(
              "Choose Your Role",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontFamily: 'HyperDeluxe',
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              "Select the option that best describe you",
              style: TextStyle(color: Colors.black54),
            ),
            const SizedBox(height: 20),

            // Farmer card
            _roleCard(
              context,
              icon: Icons.agriculture,
              title: "Farmer",
              subtitle: "Manage your crops and livestock",
              color: const Color(0xFF1AB394),
            ),

            // Labour card
            _roleCard(
              context,
              icon: Icons.work,
              title: "Labour",
              subtitle: "Find agricultural work opportunities",
              color: const Color(0xFF5DADE2),
            ),

            // Transport card
            _roleCard(
              context,
              icon: Icons.local_shipping,
              title: "Transport",
              subtitle: "Offer or find transport services",
              color: const Color(0xFFF39C12),
            ),
          ],
        ),
      ),
    );
  }

  Widget _roleCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/register'); // go to registration
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color,
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle, style: const TextStyle(color: Colors.black54)),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
