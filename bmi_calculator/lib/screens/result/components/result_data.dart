import 'package:flutter/material.dart';

class ResultData extends StatelessWidget {
  const ResultData({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      // to use the dimenstions of the parent
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'NORMAL',
            style: Theme.of(context).textTheme.headline1,
          ),
          Text(
            '22.5',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  fontSize: _mediaQuery.orientation == Orientation.portrait
                      ? _mediaQuery.size.width * 0.2
                      : _mediaQuery.size.width * 0.05,
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
                  text: '22.5 ~ 10 kg/m2',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: _mediaQuery.size.height * 0.07,
            padding:
                EdgeInsets.symmetric(horizontal: _mediaQuery.size.width * 0.02),
            child: Text(
              'you have a normal body weight. Good Job!',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}
