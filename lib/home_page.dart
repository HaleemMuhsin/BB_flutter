import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
// screen dimensions
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/firstPage_bg3.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              // Positioned widget to place the button at a specific location
              Positioned(
                // Set fixed position relative to the Stack
                bottom: screenHeight * 0.02, // Distance from the top of the Stack
                left: (screenWidth - 290) / 2, // Distance from the left of the Stack
                child: SizedBox(
                  width: 290, // Fixed width for the button
                  height: 55, // Fixed height for the button
                  child: ElevatedButton(
                    onPressed: () {
                      // Action to be performed when the button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage())
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
    );
  }
}