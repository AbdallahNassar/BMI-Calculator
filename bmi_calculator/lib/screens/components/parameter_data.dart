import 'package:flutter/material.dart';

import '../../models/human.dart';
import 'custom_button.dart';

class ParameterData extends StatefulWidget {
  //================================ Properties ================================
  final String title;
  //================================ Constructor ===============================
  const ParameterData(
    this.title,
  );
  //==========================================================================
  @override
  _WeightDataState createState() => _WeightDataState();
  //==========================================================================
}

class _WeightDataState extends State<ParameterData> {
  // final  data =
  //     widget.title == 'WEIGHT' ? Human.userWeight : Human.userAge;
  int _loopCounter = 1;

  //================================== Methods =================================
  void buttonPress({
    @required bool shouldAdd,
    bool loop = false,
  }) {
    // if (loop) {
    //   if (_loopCounter < 10) {
    //     _loopCounter++;
    //     buttonPress(
    //       Human.userWeight + 0.5 * _loopCounter,
    //       loop: true,
    //     );
    //   } else
    //     setState(() {
    //       Human.setUserWeight(val);
    //     });
    // } else
    setState(() {
      // the value to change is based on the title
      // check to see if I pressd on 'Plus' or 'Minus' button
      // and set the human data to the appropriate value
      switch (widget.title) {
        case 'WEIGHT':
          Human.setUserWeight(
            shouldAdd ? Human.userWeight + 0.5 : Human.userWeight - 0.5,
          );
          break;
        case 'AGE':
          Human.setUserAge(
            shouldAdd ? Human.userAge + 0.5 : Human.userAge - 0.5,
          );
          break;
        default:
      }
    });
  }
  //==========================================================================

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      child: Column(
        children: [
          Text(
            '${widget.title == 'WEIGHT' ? Human.userWeight : Human.userAge}',
            style:
                Theme.of(context).textTheme.headline1.copyWith(fontSize: 45.0),
          ),
          SizedBox(
            height: _mediaQuery.size.height * 0.02,
          ),
          Row(
            children: [
              SizedBox(width: _mediaQuery.size.width * 0.015),
              CustomButton(
                iconData: Icons.add,
                function: buttonPress,
              ),
              CustomButton(
                iconData: Icons.remove,
                function: buttonPress,
              ),
              SizedBox(width: _mediaQuery.size.width * 0.015),
            ],
          ),
        ],
      ),
    );
  }
}
