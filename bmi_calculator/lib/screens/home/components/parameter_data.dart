import 'package:flutter/material.dart';

import '../../../models/human.dart';
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
  //================================== Methods =================================
  void buttonPress({
    @required bool shouldAdd,
    bool loop = false,
  }) {
    if (loop == true) {
      setState(() {
        //it's created like that to easily be changed in the future.
        switch (widget.title) {
          case 'WEIGHT':
            Human.setUserWeight(
              shouldAdd ? Human.userWeight + 5 : Human.userWeight - 5,
            );
            break;
          case 'AGE':
            Human.setUserAge(
              shouldAdd ? Human.userAge + 5 : Human.userAge - 5,
            );
            break;
          default:
        }
      });
    } else
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
      height: _mediaQuery.orientation == Orientation.landscape
          ? _mediaQuery.size.height * 0.22
          : _mediaQuery.size.height * 0.18,
      width: _mediaQuery.orientation == Orientation.landscape
          ? _mediaQuery.size.width * 0.31
          : _mediaQuery.size.width * 0.38,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (_mediaQuery.orientation == Orientation.portrait)
            SizedBox(
              height: _mediaQuery.size.height * 0.02,
            ),
          Text(
            '${widget.title == 'WEIGHT' ? Human.userWeight : Human.userAge}',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: _mediaQuery.orientation == Orientation.landscape
                      ? _mediaQuery.size.width * 0.03
                      : _mediaQuery.size.width * 0.1,
                ),
          ),
          SizedBox(
            height: _mediaQuery.size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_mediaQuery.orientation == Orientation.landscape) Spacer(),
              Expanded(
                flex: 2,
                child: CustomButton(
                  iconData: Icons.add,
                  function: buttonPress,
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomButton(
                  iconData: Icons.remove,
                  function: buttonPress,
                ),
              ),
              if (_mediaQuery.orientation == Orientation.landscape) Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
