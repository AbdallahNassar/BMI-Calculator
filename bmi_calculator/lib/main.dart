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
      // 'copyWith' to use the default things in Dark Theme with
      // some modifications to ONLY some parameters.
      theme: ThemeData.dark().copyWith(
          sliderTheme: SliderThemeData().copyWith(
            activeTrackColor: Colors.white,
            inactiveTrackColor: Colors.grey.shade600,
            overlayColor: Color(0xffeb1555).withAlpha(100),
            thumbColor: Color(0xffeb1555),
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15.0,
            ),
          ),
          primaryColor: Color(0xFF090b1e),
          cardColor: Color(0xff111428),
          accentColor: Color(0xffeb1555),
          canvasColor: Color(0xFF1d1f33),
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
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        ResultScreen.routeName: (_) => ResultScreen(),
      },
    );
  }
}
