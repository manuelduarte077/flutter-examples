import 'package:fl_components/src/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      icon: Icons.home,
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      name: 'ListView Tipo 1',
      icon: Icons.list_alt_sharp,
      screen: const ListViewScreen(),
    ),
    MenuOption(
      route: 'listview2',
      name: 'ListView Tipo 2',
      icon: Icons.list,
      screen: const ListViewScreen1(),
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas - Alert',
      icon: Icons.add_alert_outlined,
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      name: 'Tarjetas - Card',
      icon: Icons.card_giftcard,
      screen: const CardScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (context) => option.screen,
      });
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
