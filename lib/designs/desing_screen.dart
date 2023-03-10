import 'package:fl_components/components/theme/app_theme.dart';
import 'package:fl_components/designs/custom_painters/headers_page.dart';
import 'package:flutter/material.dart';

class DesignScreen extends StatelessWidget {
  const DesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Design'),
        automaticallyImplyLeading: false,
      ),
      body: menuDesignList(context),
    );
  }
}

Column menuDesignList(BuildContext context) {
  return Column(
    children: [
      ListTile(
        title: const Text('Custom Painter'),
        trailing: const Icon(Icons.arrow_forward_ios),
        leading: const Icon(Icons.design_services, color: AppTheme.primary),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HeadersPage()),
          );
        },
      )
    ],
  );
}
