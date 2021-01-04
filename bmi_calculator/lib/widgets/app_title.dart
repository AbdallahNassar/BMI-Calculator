import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      height: _mediaQuery.orientation == Orientation.landscape
          ? _mediaQuery.size.width * 0.03
          : _mediaQuery.size.height * 0.03,
      child: FittedBox(
        fit: BoxFit.fitHeight,
        child: Text(
          'BMI Calculator',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
