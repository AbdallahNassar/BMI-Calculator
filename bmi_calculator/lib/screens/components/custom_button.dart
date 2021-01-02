import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  //================================ Properties ================================
  final IconData iconData;
  final Function function;
  //================================ Constructor ===============================
  const CustomButton({
    Key key,
    this.iconData,
    this.function,
  }) : super(key: key);
  //============================================================================

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Expanded(
      flex: 2,
      child: FlatButton(
        onPressed: () => function(
          shouldAdd: iconData == Icons.add ? true : false,
        ),
        child: Icon(
          iconData,
          color: Colors.white,
          size: _mediaQuery.size.width * 0.1,
        ),
        color: Color(0xFF1d1f33),
        shape: CircleBorder(),
        height: _mediaQuery.size.height * 0.07,
      ),
    );
  }
}
