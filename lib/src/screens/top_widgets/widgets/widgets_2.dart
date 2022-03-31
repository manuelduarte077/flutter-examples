import 'package:flutter/material.dart';

class StackWidgetsScreen extends StatelessWidget {
  const StackWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: 20,
            right: 20,
            width: 200,
            height: 200,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            width: 200,
            height: 200,
            child: Container(
              color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            width: 200,
            height: 200,
            child: Container(
              color: Colors.green,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            width: 200,
            height: 200,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
