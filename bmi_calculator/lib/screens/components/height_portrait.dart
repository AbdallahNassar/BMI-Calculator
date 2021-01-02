import 'package:flutter/material.dart';

import './height_slider.dart';

class HeightPortrait extends StatelessWidget {
  const HeightPortrait({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
//================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
//==========================================================================
    return Column(
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
        HeightSlider(),
      ],
    );
  }
}
