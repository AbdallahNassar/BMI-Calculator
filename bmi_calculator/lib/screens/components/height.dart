import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Height extends StatelessWidget {
  //================================ Properties ================================
  int _sliderVal = 180;
  //================================ Constructor ===============================
  Height({Key key}) : super(key: key);
  //============================================================================

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: Color(
          0xff111428,
        ),
      ),
      height: _mediaQuery.size.height * 0.2,
      width: _mediaQuery.size.width * 0.85,
      child: Column(
        children: [
          SizedBox(
            height: _mediaQuery.size.height * 0.025,
          ),
          Expanded(
            child: Text(
              'HEIGHT',
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
          Expanded(
            child: Text(
              '$_sliderVal cm',
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  .copyWith(fontSize: 40.0),
            ),
          ),
          Expanded(
            flex: 2,
            child: Slider(
              value: 10,
              onChanged: (_) {},
              min: 1,
              max: 20,
              activeColor: Colors.white,
              inactiveColor: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }
}
