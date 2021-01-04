import 'package:flutter/material.dart';

import '../../widgets/app_title.dart';
import '../../screens/home/home_screen.dart';
import '../../widgets/bmi_button.dart';
import './components/result_data.dart';

class ResultScreen extends StatelessWidget {
  //================================ Properties ================================
  static const String routeName = '/result';
  //================================ Constructor ===============================
  const ResultScreen({Key key}) : super(key: key);
  //============================================================================
  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Container(
          // to take the height & width of the parent, the safe area
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppTitle(),
              Container(
                // color: Colors.white,
                width: _mediaQuery.size.width * 0.85,
                height: _mediaQuery.orientation == Orientation.portrait
                    ? _mediaQuery.size.height * 0.05
                    : _mediaQuery.size.height * 0.1,
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  child: Text(
                    'Your Result',
                    style: Theme.of(context).textTheme.headline1.copyWith(
                          fontSize:
                              _mediaQuery.orientation == Orientation.landscape
                                  ? _mediaQuery.size.width * 0.05
                                  : _mediaQuery.size.width * 0.1,
                        ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: _mediaQuery.size.width * 0.01),
                child: ResultData(),
                height: _mediaQuery.size.height * 0.5,
                width: _mediaQuery.size.width * 0.85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    _mediaQuery.size.width * 0.02,
                  ),
                  color: Theme.of(context).canvasColor,
                ),
              ),
              BMIButton(
                title: 'RE-CALCULATE',
                funciton: () => Navigator.of(context).pushReplacementNamed(
                  HomeScreen.routeName,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
