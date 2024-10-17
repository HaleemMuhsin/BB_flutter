import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase core
import 'package:my_app/widgets/status_bar.dart';
import './home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure binding is initialized
  await Firebase.initializeApp(); // Initialize Firebase
  runApp(const MyApp(key: ValueKey('my_app'))); // Using a ValueKey for MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Pass the key to the superclass

  @override
  Widget build(BuildContext context) {
    setSystemUIOverlayStyle();
    return const MaterialApp(
      title: 'Multi-Page App',
      home: HomePage(), // Set the home page
    );
  }
}