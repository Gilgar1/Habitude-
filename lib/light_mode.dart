import 'package:flutter/material.dart';

//
// ThemeData lightMode = ThemeData(
//     colorScheme: ColorScheme.light(
//         background: Colors.grey.shade700,
//         primary: Colors.grey.shade700,
//         secondary: Colors.grey.shade200,
//         tertiary: Colors.grey.shade900));
ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.blue,
    secondary: Colors.red.shade200,
    background: Colors.grey.shade300,
    surface: Colors.green.shade200,
    onPrimary: Colors.black,
    onSecondary: Colors.black,
    onBackground: Colors.black,
    onError: Colors.black,
  ),
  // You can adjust other properties as needed
);
