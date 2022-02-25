import 'package:fl_components/src/routes/app_routes.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = Text('Flutter Componets');

    return Scaffold(
      appBar: AppBar(
        title: title,
      ),
      body: menuList(),
    );
  }

  ListView menuList() {
    return ListView.separated(
      itemCount: AppRoutes.menuOptions.length,
      itemBuilder: (context, index) {
        final item = AppRoutes.menuOptions[index];
        // intancia de la clase AppRoutes que contiene las rutas de las pantallas
        // a mostrar en el menu principal de la aplicacion
        return ListTile(
          title: Text(item.name),
          trailing: const Icon(Icons.arrow_forward_ios),
          leading: Icon(item.icon, color: AppTheme.primary),
          onTap: () {
            Navigator.pushNamed(context, item.route);
          },
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}
