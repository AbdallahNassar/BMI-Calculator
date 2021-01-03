import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/result/result_screen.dart';
import './screens/home/home_screen.dart';

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
          primaryColor: Color(0xFF090b1e),
          cardColor: Color(0xff111428),
          accentColor: Color(0xffeb1555),
          canvasColor: Color(0xFF1d1f33),
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
      home: ResultScreen(),
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ResultScreen.routeName: (_) => ResultScreen(),
      },
    );
  }
}
