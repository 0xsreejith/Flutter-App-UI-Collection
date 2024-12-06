import 'package:flutter/material.dart';
import 'package:meditation_ui/screens/meditation_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MeditationScreen(),
    );
  }
}