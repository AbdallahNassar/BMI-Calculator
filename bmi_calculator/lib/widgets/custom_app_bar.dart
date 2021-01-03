import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFF0A0D22),
      title: Text(
        'BMI CALCULATOR',
        style: Theme.of(context).textTheme.headline1,
      ),
      leading: Icon(Icons.menu),
    );
  }
}
