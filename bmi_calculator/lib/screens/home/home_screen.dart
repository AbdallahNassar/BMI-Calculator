import 'package:flutter/material.dart';

import './components/height.dart';
import './components/info_row.dart';
import '../../widgets/app_title.dart';
import '../../widgets/bmi_button.dart';
import './components/gender_row.dart';

class HomeScreen extends StatelessWidget {
  //================================ Properties ================================
  static const String routeName = '/home';
  //================================ Constructor ===============================
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppTitle(),
            GenderRow(),
            Height(),
            InfoRow(),
            BMIButton(
              // will check if null, then will use the function inside the
              // button, for better use of the encapsulation principle
              funciton: null,
              title: 'CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
