import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple], // Full-screen gradient
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // iOS-style Back Button (Top Left)
            SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context); // Navigate back
                  },
                ),
              ),
            ),

            const Spacer(),

            // Profile Avatar
            const CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(
                  'https://img.freepik.com/free-vector/smiling-woman-with-glasses_1308-177859.jpg?t=st=1741886849~exp=1741890449~hmac=a1380482e3479550c1affff7fa57fd6b85df98569f96c2f1e744a7a2be95d4da&w=740'), // Placeholder image
            ),
            const SizedBox(height: 10),

            // User Name
            const Text(
              'Amrutha P A',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white, // White text for better visibility
              ),
            ),
            const SizedBox(height: 5),

            // Bio
            const Text(
              'Flutter Developer | Tech Enthusiast',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70, // Slightly faded white for subtle look
              ),
            ),
            const SizedBox(height: 20),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
