import 'package:flutter/material.dart';
import 'package:my_app/admin_page.dart';
import 'package:my_app/widgets/bg_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final Logger _logger = Logger();

  Future<void> _login() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      // Handle successful login and navigate to AdminPage
      _logger.i("Login successful: ${userCredential.user?.email}");
      
      // Navigate to AdminPage
      Navigator.pushReplacement(
        
        
        context,
        MaterialPageRoute(builder: (context) => const AdminPage()),
      );
      
    } on FirebaseAuthException catch (e) {
      // Handle login errors
      if (e.code == 'user-not-found') {
        _logger.e('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        _logger.e('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImageWidget(imagePath: 'assets/images/loginPage_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
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
                          'assets/images/billboardAppText_shader.png',
                          fit: BoxFit.cover,
                        ),
                      ),
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

                  const SizedBox(height: 20),

                  Container(
                    padding: const EdgeInsets.fromLTRB(30, 60, 30, 60),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: _emailController,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF1F1F1),
                            contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9.0),
                              borderSide: BorderSide.none,
                            ),
                            hintText: 'Username:',
                            hintStyle: const TextStyle(color: Color(0xFF8F8F8F)),
                          ),
                        ),

                        const SizedBox(height: 25),

                        TextField(
                          controller: _passwordController,
                          style: const TextStyle(fontSize: 15),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFFF1F1F1),
                            contentPadding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12.0),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(9.0),
                            ),
                            hintText: 'Password:',
                            hintStyle: const TextStyle(color: Color(0xFF8F8F8F)),
                          ),
                          obscureText: true,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Action when pressed for Cancel
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          textStyle: const TextStyle(fontFamily: 'SF-UI-Display'),
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 52.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text('Cancel'),
                      ),

                      ElevatedButton(
                        onPressed: _login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(fontFamily: 'SF-UI-Display'),
                          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 52.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        child: const Text('Login'),
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