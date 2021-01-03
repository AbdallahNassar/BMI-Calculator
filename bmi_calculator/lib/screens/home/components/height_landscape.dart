import 'package:flutter/material.dart';

import './height_slider.dart';

class HeightLandscape extends StatelessWidget {
  const HeightLandscape({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Expanded(
          child: Text(
            'HEIGHT',
            style: Theme.of(context).textTheme.headline1.copyWith(
                  color: Colors.grey,
                ),
          ),
        ),
        Expanded(
          child: HeightSlider(),
          flex: 5,
        ),
      ],
    );
  }
}
