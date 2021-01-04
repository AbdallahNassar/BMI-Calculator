import 'package:flutter/material.dart';

import './parameter_data.dart';

class Parameter extends StatelessWidget {
  //================================ Parameters ================================
  final String title;
  //================================ Constructor ===============================
  const Parameter(
    this.title,
  );
  //============================================================================
  @override
  Widget build(BuildContext context) {
    //================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
    //==========================================================================
    return Container(
      height: _mediaQuery.size.height * 0.22,
      width: _mediaQuery.size.width * 0.413,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Theme.of(context).cardColor,
      ),
      child: _mediaQuery.orientation == Orientation.landscape
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: _mediaQuery.size.width * 0.03,
                ),
                Text(
                  '$title',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                Expanded(child: ParameterData(title)),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$title',
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(color: Colors.grey),
                ),
                ParameterData(title),
              ],
            ),
    );
  }
}
