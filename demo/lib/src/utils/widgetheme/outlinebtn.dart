import 'package:flutter/material.dart';

class TOutlineBtn {
  static OutlinedButtonThemeData loutlinetheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: EdgeInsets.all(18),
      elevation: 2.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    ),
  );
  static OutlinedButtonThemeData doutlinetheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: EdgeInsets.all(18),
      elevation: 2.4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
    ),
  );
}



// class TElevatedbtn {
//   static ElevatedButtonThemeData lelevattheme = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       shadowColor: lColorScheme.shadow,
//       backgroundColor: lColorScheme.scrim,
//       foregroundColor: lColorScheme.onError,
//       surfaceTintColor: lColorScheme.surfaceTint,
//       // backgroundColor: Color.fromARGB(239, 251, 251, 255),
//       elevation: 2.4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(90),
//       ),
//     ),
//   );

//   static ElevatedButtonThemeData delevattheme = ElevatedButtonThemeData(
//     style: ElevatedButton.styleFrom(
//       foregroundColor: Colors.black,
//       backgroundColor: dColorScheme.surface,
//       surfaceTintColor: Color.fromARGB(255, 57, 53, 53),
//       elevation: 2.4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(90),
//       ),
//     ),
//   );
// }
