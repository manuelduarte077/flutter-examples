import 'package:fl_components/components/routes/app_routes.dart';
import 'package:fl_components/components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      // Para que no se muestre un error cuando no existe la ruta que se esta
      // solicitando en la aplicacion
    );
  }
}
