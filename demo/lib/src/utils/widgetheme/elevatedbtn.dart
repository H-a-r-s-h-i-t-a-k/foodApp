import 'package:demo/main.dart';
import 'package:flutter/material.dart';

class TElevatedbtn {
  static ElevatedButtonThemeData lelevattheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(18),
      shadowColor: lColorScheme.shadow,
      backgroundColor: lColorScheme.scrim,
      foregroundColor: lColorScheme.onError,
      surfaceTintColor: lColorScheme.surfaceTint,
      // backgroundColor: Color.fromARGB(239, 251, 251, 255),
      elevation: 2.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    ),
  );

  static ElevatedButtonThemeData delevattheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.all(18),
      foregroundColor: Color.fromARGB(255, 53, 165, 156),
      backgroundColor: Color.fromARGB(255, 220, 129, 18),
      surfaceTintColor: lColorScheme.shadow,
      elevation: 2.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    ),
  );
}
