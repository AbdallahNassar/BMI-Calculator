import 'package:flutter/material.dart';

import './components/height.dart';
import './components/bmi_button.dart';
import './components/gender_row.dart';
import './components/info_row.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Text(
          'BMI CALCULATOR',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: Icon(Icons.menu),
      ),
      body: SafeArea(
        child: Container(
          height: _mediaQuery.size.height,
          width: _mediaQuery.size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GenderRow(),
              Height(),
              InfoRow(),
              BMIButton(),
            ],
          ),
        ),
      ),
    );
  }
}
