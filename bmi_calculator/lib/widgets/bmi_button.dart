import 'package:flutter/material.dart';

import '.././screens/result/result_screen.dart';

class BMIButton extends StatelessWidget {
  //================================ Properties ================================
  final Function funciton;
  final String title;
  //================================ Constructor ===============================
  const BMIButton({Key key, this.funciton, this.title}) : super(key: key);
  //================================ Methods ===================================
  void calculateBMI(BuildContext context) {
    print('pressed');
    Navigator.of(context).pushReplacementNamed(ResultScreen.routeName);
  }
  //============================================================================

  @override
  Widget build(BuildContext context) {
//================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
//==========================================================================
    return FlatButton(
      height: _mediaQuery.size.height * 0.1,
      minWidth: double.infinity,
      // if function is null, use the built-in one.
      onPressed: funciton == null ? () => calculateBMI(context) : funciton,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline1.copyWith(
              fontSize: _mediaQuery.orientation == Orientation.landscape
                  ? _mediaQuery.size.width * 0.025
                  : _mediaQuery.size.width * 0.05,
              fontWeight: FontWeight.w900,
            ),
      ),
      color: Theme.of(context).accentColor,
    );
  }
}
