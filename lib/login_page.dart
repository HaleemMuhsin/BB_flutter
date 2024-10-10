import 'package:flutter/material.dart';
import 'package:my_app/widgets/bg_image.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image Container
        const BackgroundImageWidget(imagePath: 'assets/images/loginPage_bg.png'),
        // Scaffold containing the rest of the UI
        Scaffold(
          backgroundColor: Colors.transparent, // Make Scaffold background transparent
          body: SafeArea(
            child: Container(
              padding: const EdgeInsets.all(25.0),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'CalSans',
                      color: Color(0xFF4C4C4C),
                    ),
                    textAlign: TextAlign.center,
                  ),

                  Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/billboardAppText_shader.png', // Image path
                          fit: BoxFit.cover, // Adjust the image to cover the entire area
                        ),
                      ),

                      // Glow effect
                      Text(
                        'Billboard App',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'CalSans',
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: [Color(0xFFFF8878), Color(0xFF994896)],
                            ).createShader(const Rect.fromLTWH(0, 0, 0, 100)),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      // Main text
                      Text(
                        'Billboard App',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'CalSans',
                          foreground: Paint()
                            ..shader = const LinearGradient(
                              colors: [Color(0xFFFF8878), Color(0xFF994896)],
                            ).createShader(const Rect.fromLTWH(100, 0, 300, 0)),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  const SizedBox(height: 20), // Increased space for better layout

                  // Input Fields Container
                  Container(
                    padding:
                        const EdgeInsets.fromLTRB(30, 60, 30, 60), // Padding inside the container
                    decoration: BoxDecoration(
                      color: Colors.white, // Background color for input fields
                      borderRadius:
                          BorderRadius.circular(15.0), // Rounded corners
                    ),
                    child: Column(
                      children: [
                        // Username Input Field
                        TextField(
                          style:
                              const TextStyle(fontSize: 15, color: Color(0xFF8F8F8F)),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF1F1F1),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical: 12.0,
                                      horizontal:
                                          12.0), // Adjusted padding
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(9.0), // Rounded corners
                                borderSide:
                                    BorderSide.none, // No border side for better appearance
                              ),
                              hintText: 'Username:',
                              hintStyle:
                                  const TextStyle(color: Color(0xFF8F8F8F))),
                        ),

                        const SizedBox(height: 25), // Space between text fields

                        // Password Input Field
                        TextField(
                          style:
                              const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor:
                                  const Color(0xFFF1F1F1),
                              contentPadding:
                                  const EdgeInsets.symmetric(vertical:
                                      12.0, horizontal:
                                      12.0), // Adjusted padding
                              border:
                                  OutlineInputBorder(
                                borderSide:
                                    BorderSide.none, // Border color when focused
                                borderRadius:
                                    BorderRadius.circular(9.0), // Rounded corners
                              ),
                              hintText:
                                  'Password:',
                              hintStyle:
                                  const TextStyle(color:
                                      Color(0xFF8F8F8F))),
                          obscureText:
                              true, // To hide password input
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // Space between buttons
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Action when pressed for Cancel
                        },
                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.white,
                          foregroundColor:
                              Colors.black,
                          textStyle:
                              const TextStyle(fontFamily:
                                  'SF-UI-Display'),
                          padding:
                              const EdgeInsets.symmetric(vertical:
                                  20.0,
                                  horizontal:
                                  52.0), // Padding
                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(14), // Rounded corners
                          ),
                        ),
                        child:
                            const Text('Cancel'),
                      ),

                      ElevatedButton(
                        onPressed: () {
                          // Action when pressed for Login
                        },
                        style:
                            ElevatedButton.styleFrom(
                          backgroundColor:
                              Colors.black,
                          foregroundColor:
                              Colors.white,
                          textStyle:
                              const TextStyle(fontFamily:
                                  'SF-UI-Display'),
                          padding:
                              const EdgeInsets.symmetric(vertical:
                                  20.0,
                                  horizontal:
                                  52.0), // Padding
                          shape:
                              RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(14), // Rounded corners
                          ),
                        ),
                        child:
                            const Text('Login'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}