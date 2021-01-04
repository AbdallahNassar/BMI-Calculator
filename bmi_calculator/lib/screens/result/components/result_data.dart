import 'package:flutter/material.dart';

import '../../../helpers/calculator_brain.dart';

class ResultData extends StatelessWidget {
  const ResultData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    final Map<String, dynamic> bmiResultFeedBack =
        CalculatorBrain.getBMIResult();
    //==========================================================================
    return Container(
      // to use the dimenstions of the parent
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            bmiResultFeedBack['category'],
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: bmiResultFeedBack['color'],
                  fontWeight: FontWeight.w900,
                ),
          ),
          FittedBox(
            child: Text(
              bmiResultFeedBack['result'].toStringAsFixed(2),
              style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: _mediaQuery.orientation == Orientation.portrait
                        ? _mediaQuery.size.width * 0.2
                        : _mediaQuery.size.width * 0.05,
                  ),
            ),
          ),
          Text.rich(
            TextSpan(
              text: 'Normal BMI Range\n\n',
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Colors.grey.shade700,
                  ),
              children: [
                TextSpan(
                  text: '18.5 ~ 25 kg/m2',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.03),
            child: Text(
              bmiResultFeedBack['advice'],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}
