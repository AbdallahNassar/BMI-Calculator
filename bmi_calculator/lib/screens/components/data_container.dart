import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  //================================ Properties ================================
  final String title;
  int value;
  final Function function;

  //================================ Constructor ===============================
  DataContainer({
    Key key,
    this.title,
    this.value,
    this.function,
  }) : super(key: key);
  //============================================================================

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
          SizedBox(height: _mediaQuery.size.height * 0.01),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline1
                .copyWith(color: Colors.grey),
          ),
          Text(
            '$value',
            style:
                Theme.of(context).textTheme.headline1.copyWith(fontSize: 45.0),
          ),
          Row(
            children: [
              SizedBox(width: _mediaQuery.size.width * 0.015),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () => function(++value),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: _mediaQuery.size.width * 0.1,
                  ),
                  color: Color(0xFF1d1f33),
                  shape: CircleBorder(),
                  height: _mediaQuery.size.height * 0.075,
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () => function(--value),
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: _mediaQuery.size.width * 0.1,
                  ),
                  color: Color(0xFF1d1f33),
                  shape: CircleBorder(),
                  height: _mediaQuery.size.height * 0.075,
                ),
              ),
              SizedBox(width: _mediaQuery.size.width * 0.015),
            ],
          ),
        ],
      ),
    );
  }
}
