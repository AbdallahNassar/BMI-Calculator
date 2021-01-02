import 'package:flutter/material.dart';

import './age.dart';
import './weight.dart';

class InfoRow extends StatelessWidget {
  //================================ Constructor ===============================
  const InfoRow({
    Key key,
  }) : super(key: key);
  //============================================================================
  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      width: _mediaQuery.size.width * 0.85,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Weight(),
          SizedBox(width: _mediaQuery.size.width * 0.015),
          Age(),
        ],
      ),
    );
  }
}
