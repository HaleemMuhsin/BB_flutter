import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Stack(
      children: [
        // Background Image Container
        Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/firstPage_bg3.png'), // Background image
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Scaffold containing the rest of the UI
        Scaffold(
          backgroundColor: Colors.transparent, // Make Scaffold background transparent
          body: SafeArea(
            child: Stack(
              children: [
                // Positioned widget to place the button at a specific location
                Positioned(
                  bottom: screenHeight * 0.02, // Distance from the bottom of the Stack
                  left: (screenWidth - 290) / 2, // Center the button horizontally
                  child: SizedBox(
                    width: 290, // Fixed width for the button
                    height: 55, // Fixed height for the button
                    child: ElevatedButton(
                      onPressed: () {
                        // Action to be performed when the button is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color(0xFF9C9C9C), // Text color of the button
                        backgroundColor: const Color(0xFF29282D), // Background color of the button
                      ),
                      child: const Text('Get Started'), // Button text
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}