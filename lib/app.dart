
import 'package:flutter/material.dart';

import 'components/routes/app_routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // home:  const NavigationScreen(),
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      // theme: AppTheme.lightTheme,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      // Para que no se muestre un error cuando no existe la ruta que se esta
      // solicitando en la aplicacion
    );
  }
}
