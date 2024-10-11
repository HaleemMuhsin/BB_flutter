import 'package:flutter/material.dart';

class BackgroundImageWidget extends StatelessWidget {
  final String imagePath; // Path to the background image

  const BackgroundImageWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath), // Use the provided image path
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}