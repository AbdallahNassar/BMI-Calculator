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
  //================================ Properties ================================
  bool _isMale = true;
  //================================ Methods ===================================
  void changeSelection(bool isMale) {
    setState(() {
      _isMale = isMale;
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Gender(
              sex: 'Male',
              isSelected: _isMale,
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
              isSelected: !_isMale,
              function: changeSelection,
            ),
          ),
        ],
      ),
    );
  }
}
