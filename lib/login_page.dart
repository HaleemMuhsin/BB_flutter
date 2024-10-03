import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFC9CFDB),
                Color(0xFFCAD0DC),               
              ],
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Welcome to',
                style: TextStyle(
                  fontSize: 33.77,
                  fontFamily: 'CalSans',
                  color: Color(0xFF4C4C4C)
                ),
                textAlign: TextAlign.center,
              ),


              Stack(
                children: [
                  // Glow effect
                  Text(
                    'Billboard App',
                    style: TextStyle(
                      fontSize: 33.77,
                      fontFamily: 'CalSans',
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: [Color(0xFFFF8878), Color(0xFF994896)]
                        ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
                      shadows: [
                        Shadow(
                          color: const Color(0xFFFF8878).withOpacity(0.3),
                          blurRadius: 15,
                        ),
                        Shadow(
                          color: const Color(0xFF994896).withOpacity(0.3),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Main text
                  Text(
                    'Billboard App',
                    style: TextStyle(
                      fontSize: 33.77,
                      fontFamily: 'CalSans',
                      foreground: Paint()
                        ..shader = const LinearGradient(
                          colors: [Color(0xFFFF8878), Color(0xFF994896)]
                        ).createShader(const Rect.fromLTWH(0, 0, 200, 70)),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),

              const SizedBox(height: 10),
              
             TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9.0), // Rounded corners
                  ),
                  hintText: 'Enter username:',
                ),
              ),

            const SizedBox(height: 25),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(9.0), // Rounded corners
                  ),
                  hintText: 'Enter password:',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}