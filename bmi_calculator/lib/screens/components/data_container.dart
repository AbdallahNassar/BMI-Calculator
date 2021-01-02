import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  //================================ Properties ================================
  final String title;
  int _value = 90;
  //================================ Constructor ===============================
  DataContainer({
    Key key,
    this.title,
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
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: Color(
          0xff111428,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: _mediaQuery.size.height * 0.025,
          ),
          Expanded(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Colors.grey,
                  ),
            ),
          ),
          Text(
            '$_value',
            style:
                Theme.of(context).textTheme.headline1.copyWith(fontSize: 40.0),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: FlatButton(
                    height: _mediaQuery.size.height * 0.07,
                    color: Color(0xff1c1f32),
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    height: _mediaQuery.size.height * 0.07,
                    color: Color(0xff1c1f32),
                    shape: CircleBorder(),
                    onPressed: () {},
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
