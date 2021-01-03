import 'package:flutter/material.dart';

class BMIButton extends StatelessWidget {
  const BMIButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
//==========================================================================
    return FlatButton(
      height: _mediaQuery.size.height * 0.1,
      minWidth: _mediaQuery.size.width,
      onPressed: () {},
      child: Text(
        'CALCULATE YOUR BMI',
        style: Theme.of(context).textTheme.headline1,
      ),
      color: Color(
        0xffeb1555,
      ),
    );
  }
}
