import 'package:flutter/material.dart';

import 'screens/screens.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      // home: const ListViewScreen1(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listview1': (context) => const ListViewScreen(name: "List View"),
        'listview2': (context) => const ListViewScreen1(),
        'alert': (context) => const AlertScreen(name: "Alert Widget"),
        'card': (context) => const CardScreen(),
      },
      onGenerateRoute: (RouteSettings settings) {
        print(settings.name);
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      },
    );
  }
}
