import 'package:fl_components/designs/custom_painters/headers_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HeadersPage(),
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      // theme: AppTheme.lightTheme,
      // initialRoute: AppRoutes.initialRoute,
      // routes: AppRoutes.getAppRoutes(),
      // onGenerateRoute: AppRoutes.onGenerateRoute,
      // Para que no se muestre un error cuando no existe la ruta que se esta
      // solicitando en la aplicacion
    );
  }
}
