import 'package:flutter/material.dart';

import './height_landscape.dart';
import './height_portrait.dart';

class Height extends StatelessWidget {
  //================================ Constructor ===============================
  const Height({Key key}) : super(key: key);
  //============================================================================

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).cardColor,
      ),
      height: _mediaQuery.size.height * 0.2,
      width: _mediaQuery.size.width * 0.85,
      child: _mediaQuery.orientation == Orientation.landscape
          ? HeightLandscape()
          : HeightPortrait(),
    );
  }
}
