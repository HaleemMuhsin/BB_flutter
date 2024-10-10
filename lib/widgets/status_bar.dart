import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void setSystemUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set status bar color to white
      statusBarIconBrightness: Brightness.dark, // Set icons to dark (black)
      systemNavigationBarColor: Colors.white, // Optional: Set navigation bar color
      systemNavigationBarIconBrightness: Brightness.dark, // Optional: Set navigation bar icons to dark (black)
    ),
  );
}