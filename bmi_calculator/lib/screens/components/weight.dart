import 'package:flutter/material.dart';

import './weight_data.dart';

class Weight extends StatelessWidget {
  //================================ Parameters ================================
  //================================ Constructor ===============================
  const Weight({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      height: _mediaQuery.size.height * 0.24,
      width: _mediaQuery.size.width * 0.413,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).cardColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'WEIGHT',
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(color: Colors.grey),
          ),
          WeightData(),
        ],
      ),
    );
  }
}
