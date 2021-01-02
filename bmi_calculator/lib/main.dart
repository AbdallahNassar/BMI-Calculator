import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/home_screen.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: GoogleFonts.comfortaa(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )),
      home: HomeScreen(),
    );
  }
}
