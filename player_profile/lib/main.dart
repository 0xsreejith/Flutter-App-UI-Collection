import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:player_profile/player_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.sonoTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: const PlayerProfile(),
      

    );
  }
}
