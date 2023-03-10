import 'package:fl_components/components/screens/home_screens.dart';
import 'package:flutter/material.dart';

import '../designs/desing_screen.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({
    super.key,
    required String tab,
  }) : index = indexFrom(tab);

  final int index;

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();

  static int indexFrom(String tab) {
    switch (tab) {
      case 'components':
        return 1;
      case 'design':
        return 2;
      default:
        return 0;
    }
  }
}

class _NavigationScreenState extends State<NavigationScreen> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _selectedIndex = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.settings_input_component),
            label: 'Components',
          ),
          NavigationDestination(
            icon: Icon(Icons.design_services),
            label: 'Design',
          ),
        ],
        onDestinationSelected: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
        selectedIndex: _selectedIndex,
        animationDuration: const Duration(milliseconds: 200),
        elevation: 0,
        height: 60,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [HomeScreen(), DesignScreen()],
      ),
    );
  }
}
