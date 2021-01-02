import 'package:flutter/material.dart';

import './components/height.dart';
import './components/bmi_button.dart';
import './components/data_container.dart';
import './components/gender_row.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Scaffold(
      backgroundColor: Color(0xFF090b1e),
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Text(
          'BMI CALCULATOR',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: SafeArea(
        child: Container(
          height: _mediaQuery.size.height,
          width: _mediaQuery.size.width,
          child: Column(
            children: [
              SizedBox(height: _mediaQuery.size.height * 0.03),
              GenderRow(),
              SizedBox(height: _mediaQuery.size.height * 0.03),
              Height(),
              SizedBox(height: _mediaQuery.size.height * 0.03),
              Container(
                width: _mediaQuery.size.width * 0.85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DataContainer(title: 'WEIGHT'),
                    SizedBox(
                      width: _mediaQuery.size.width * 0.015,
                    ),
                    DataContainer(title: 'Age'),
                  ],
                ),
              ),
              SizedBox(height: _mediaQuery.size.height * 0.03),
              Expanded(child: BMIButton()),
            ],
          ),
        ),
      ),
    );
  }
}
