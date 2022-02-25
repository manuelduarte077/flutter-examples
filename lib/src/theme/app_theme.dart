import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario de la app (azul) y color de fondo de la app (blanco)
    primaryColor: Colors.indigo,

    // appBarTheme:
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // cambiamos el color de los botones de manera global
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario de la app (azul) y color de fondo de la app (blanco)
    primaryColor: Colors.indigo,

    // appBarTheme:
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
