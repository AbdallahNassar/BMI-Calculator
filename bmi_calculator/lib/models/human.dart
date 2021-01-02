class Human {
  //================================ Properties ================================
  // this will be the human's centralized datat warehouse,
  // the gender row will store here whether or not this is a male,
  // and the height row will store the height val,
  // and then i'll use all that data to calculate the bmi.
  // the '_' to make it private
  static bool _isMale = false;
  static double _height = 143.0;
  static double _weight = 90.0;
  static int _age = 21;
  //================================ methods ===============================
  static void setUserGender({bool isUserMale}) {
    if (isUserMale != null) {
      _isMale = isUserMale;
      print('user gender is male = $isUserMale');
    }
  }

  static bool get isUserMale => _isMale;

  //============================================================================
  static void setUserHeight(double userHeight) {
    if (userHeight != null && userHeight >= 20.0 && userHeight <= 300.0) {
      _height = userHeight;
      print('user height = $userHeight');
    }
  }

  static double get userHeight => _height;
  //============================================================================
  static void setUserWeight(double userWeight) {
    if (userWeight != null && userWeight >= 1.0 && userWeight <= 500.0) {
      _weight = userWeight;
      print('user weight = $userWeight');
    }
  }

  static double get userWeight => _weight;
  //============================================================================
  static void setUserAge(int userAge) {
    if (userAge != null && userAge >= 1 && userAge <= 130) {
      _age = userAge;
      print('user age = $userAge');
    }
  }

  static int get userAge => _age;
  //============================================================================
}
