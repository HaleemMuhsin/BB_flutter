import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFC9CFDB);
const Color secondaryColor = Color(0xFFCAD0DC);

BoxDecoration gradientBackground = const BoxDecoration(
  gradient: LinearGradient(
    colors: [
      primaryColor,
      secondaryColor,
    ],
  ),
);