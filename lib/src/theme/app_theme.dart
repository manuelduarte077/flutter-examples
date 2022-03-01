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

    // Cambiar el color de floatingActionButton
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),

    // Cambiar el color de elevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    // inputDecorationTheme: Cuando esta activo
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(
        color: primary,
      ),
      // Cuando esta activo
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
      ),
      // Cuando esta desactivado
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
      ),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(8), bottomLeft: Radius.circular(8)),
      ),
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
