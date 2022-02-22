import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key, required this.name}) : super(key: key);

  final name;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('AlertScreen'),
      ),
    );
  }
}
