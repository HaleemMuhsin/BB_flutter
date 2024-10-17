import 'package:flutter/material.dart';
import 'package:my_app/widgets/bg_image.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
    children: [BackgroundImageWidget(imagePath: 'assets/images/loginPage_bg.png'),
     Scaffold(),
    ]
    );
  }
}