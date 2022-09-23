import 'package:flutter/material.dart';

class AppColors {
  final Color orange = const Color(0xFFffb80e);
  final Color offOrange = const Color(0xFFfef4cb);
  final Color white = const Color(0xFFFFFFFF);
  final Color black = const Color(0xFF000000);
  final Color grey = const Color(0xFF656565);
  final Color greyOff = const Color.fromARGB(255, 184, 184, 184);
  final Color red = const Color(0xFFe32929);
  final Color offWhite = const Color(0xFFE4E4E4);

  ThemeData themeData() {
    ColorScheme colorScheme = ColorScheme(
        brightness: Brightness.light,
        primary: orange,
        onPrimary: white,
        secondary: orange,
        onSecondary: white,
        error: red,
        onError: white,
        background: offWhite,
        onBackground: offWhite,
        surface: offWhite,
        onSurface: offWhite);

    var t = ThemeData.from(
      textTheme: ThemeData.light().textTheme,
      colorScheme: colorScheme,
    ).copyWith(
      textSelectionTheme: TextSelectionThemeData(cursorColor: orange),
      highlightColor: orange,
    );

    return t;
  }
}
