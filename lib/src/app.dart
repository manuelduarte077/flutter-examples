import 'package:fl_components/src/routes/app_routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),

      onGenerateRoute: AppRoutes.onGenerateRoute,
      // Para que no se muestre un error cuando no existe la ruta que se esta
      // solicitando en la aplicacion
    );
  }
}
