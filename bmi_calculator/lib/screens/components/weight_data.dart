import 'package:flutter/material.dart';

import '../../models/human.dart';
import './custom_button.dart';

class WeightData extends StatefulWidget {
  //================================ Constructor ===============================
  const WeightData({
    Key key,
  }) : super(key: key);
  //==========================================================================
  @override
  _WeightDataState createState() => _WeightDataState();
  //==========================================================================
}

class _WeightDataState extends State<WeightData> {
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
      // the value to change is userWeight
      final val = Human.userWeight;
      // check to see if I pressd on 'Plus' or 'Minus' button
      // and set the human data to the appropriate value
      Human.setUserWeight(
        shouldAdd ? val + 0.5 : val - 0.5,
      );
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
            '${Human.userWeight}',
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
