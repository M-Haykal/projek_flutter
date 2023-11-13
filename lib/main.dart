import 'package:flutter/material.dart';
import 'package:project_pm/splashscreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Muhammad Haykal',
      home: SplashScreenPage(),
    );
  }
}
