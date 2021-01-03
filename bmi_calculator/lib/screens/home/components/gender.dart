import 'package:flutter/material.dart';

class Gender extends StatelessWidget {
  //================================ Properties ================================
  final String sex;
  final bool isSelected;
  final Function function;
  //================================ Constructor ===============================
  const Gender({
    Key key,
    @required this.sex,
    @required this.isSelected,
    @required this.function,
  }) : super(key: key);
  //============================================================================

  @override
  Widget build(BuildContext context) {
//================================ Parameters ==============================
    final MediaQueryData _mediaQuery = MediaQuery.of(context);
//==========================================================================
    return FlatButton(
      onPressed: () {
        switch (sex) {
          // if 'Male' selected, call the function with 'isMale' set to true;
          case 'Male':
            function(true);
            break;
          // if 'Female' selected, call the function with 'isMale' set to false;
          // the function will update the UI and save the value for
          // any computations needed.
          case 'Female':
            function(false);
            break;
          default:
            function(true);
        }
      },
      height: _mediaQuery.size.height * 0.18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          _mediaQuery.size.width * 0.02,
        ),
      ),
      color: Theme.of(context).canvasColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/${sex.toLowerCase()}.png',
            color: isSelected ? Colors.white : Colors.grey.shade700,
            height: _mediaQuery.size.height * 0.07,
          ),
          SizedBox(height: _mediaQuery.size.height * 0.02),
          Center(
            child: Text(
              sex,
              style: isSelected
                  ? Theme.of(context).textTheme.headline1
                  : Theme.of(context).textTheme.headline1.copyWith(
                        color: Colors.grey.shade700,
                      ),
            ),
          ),
        ],
      ),
    );
  }
}
