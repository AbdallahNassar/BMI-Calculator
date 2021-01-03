import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import './components/height.dart';
import '../../widgets/bmi_button.dart';
import './components/gender_row.dart';
import './components/info_row.dart';

class HomeScreen extends StatelessWidget {
  //================================ Properties ================================
  static const String routeName = '/home';
  //================================ Constructor ===============================
  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: PreferredSize(
        child: CustomAppBar(),
        preferredSize: Size(double.infinity, _mediaQuery.padding.top),
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
              BMIButton(
                // will check if null, then will use the function inside the
                // button, for better use of the encapsulation principle
                funciton: null,
                title: 'CALCULATE YOUR BMI',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
