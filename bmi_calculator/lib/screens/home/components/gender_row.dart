import 'package:bmi_calculator/models/human.dart';
import 'package:flutter/material.dart';

import './gender.dart';

class GenderRow extends StatefulWidget {
  //================================ Constructor ===============================
  GenderRow({
    Key key,
  }) : super(key: key);
  //============================================================================
  @override
  _GenderRowState createState() => _GenderRowState();
  //============================================================================
}

class _GenderRowState extends State<GenderRow> {
  //================================ Methods ===================================
  void changeSelection(bool isMale) {
    setState(() {
      Human.setUserGender(isUserMale: isMale);
    });
  }

  //============================================================================
  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      width: _mediaQuery.size.width * 0.85,
      height: _mediaQuery.size.height * 0.18,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Gender(
              sex: 'Male',
              isSelected: Human.isUserMale,
              function: changeSelection,
            ),
          ),
          SizedBox(
            width: _mediaQuery.size.width * 0.015,
          ),
          Expanded(
            child: Gender(
              sex: 'Female',
              // send the opposite of 'ismale' to use only ONE boolean
              isSelected: !Human.isUserMale,
              function: changeSelection,
            ),
          ),
        ],
      ),
    );
  }
}
