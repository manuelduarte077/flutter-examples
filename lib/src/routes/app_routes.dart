import 'package:fl_components/src/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //   route: 'home',
    //   name: 'Home Screen',
    //   icon: Icons.home,
    //   screen: const HomeScreen(),
    // ),
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
    MenuOption(
      route: 'avatar',
      name: 'Circles - Avatar',
      icon: Icons.supervised_user_circle,
      screen: const CircleAvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      icon: Icons.animation,
      screen: const AnimatedScreen(),
    ),
    MenuOption(
      route: 'inputs',
      name: 'Inputs - TextField',
      icon: Icons.input,
      screen: const InputScreen(),
    ),
    MenuOption(
      route: 'slider',
      name: 'Slider ',
      icon: Icons.slideshow_rounded,
      screen: const SliderScreen(),
    ),
    MenuOption(
      route: 'listview_builder',
      name: 'ListView Builder',
      icon: Icons.view_list,
      screen: const ListViewBuilderScreen(),
    ),
    MenuOption(
      route: 'top_widgets',
      name: 'Top Widgets',
      icon: Icons.topic,
      screen: const TopWidgetsScreen(),
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
