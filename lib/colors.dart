import 'package:flutter/material.dart';

class AppTheme {
  static bool darkMode() {
    bool status;
    status = false;
    return status;
  }

  static BoxDecoration pageTheme(bool isDark) {
    return isDark
        ? const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 68, 44, 15),
                // Colors.amber,
                //  Color.fromARGB(255, 71, 40, 1),
                Color.fromARGB(120, 78, 54, 1)
              ],
            ),
          )
        : const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.amberAccent,
                // Colors.amber,
                Color.fromARGB(255, 255, 145, 0)
              ],
            ),
          );
  }

  static searchBarColor(bool isDark) {
    return isDark ? Colors.white30 : Colors.black;
  }
}
