import 'package:flutter/material.dart';
import './home_page.dart';
void main() {
  runApp(const MyApp(key: ValueKey('my_app'))); // Using a ValueKey for MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Pass the key to the superclass
 @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Multi-Page App',
      home: HomePage(), // Set the home page
    );
  }
}