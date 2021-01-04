import 'package:bmi_calculator/models/human.dart';
import 'package:flutter/material.dart';

class HeightSlider extends StatefulWidget {
  //================================ Constructor ===============================
  const HeightSlider({Key key}) : super(key: key);
  //============================================================================
  @override
  _HeightSliderState createState() => _HeightSliderState();
  //============================================================================
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
//================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
//==========================================================================
    return Container(
      height: _mediaQuery.size.height * 0.15,
      width: _mediaQuery.size.width * 0.85,
      child: Column(
        children: [
          SizedBox(
            height: _mediaQuery.orientation == Orientation.portrait
                ? _mediaQuery.size.height * 0.02
                : _mediaQuery.size.height * 0.01,
          ),
          Expanded(
            child: Text(
              '${Human.userHeight.toStringAsFixed(1)} cm',
              style: Theme.of(context).textTheme.headline1.copyWith(
                    fontSize: _mediaQuery.orientation == Orientation.landscape
                        ? _mediaQuery.size.width * 0.024
                        : _mediaQuery.size.width * 0.1,
                  ),
            ),
          ),
          Container(
            height: _mediaQuery.size.height * 0.08,
            child: Slider(
              value: Human.userHeight.toDouble(),
              onChanged: (double newValue) {
                Human.setUserHeight(newValue);
                setState(() {
                  Human.setUserHeight(newValue);
                });
              },
              min: 20.0,
              max: 300.0,
              // 300 - 20 = 280 possible values
              // so 560 divisions to only show INT and INT.Half
              // 10 and 10.5 then 11, and so on.
              divisions: 560,
              activeColor: Colors.white,
              inactiveColor: Colors.grey.shade600,
            ),
          )
        ],
      ),
    );
  }
}
