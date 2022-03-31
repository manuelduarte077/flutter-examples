import 'package:flutter/material.dart';

class TransformWidgetsScreen extends StatefulWidget {
  const TransformWidgetsScreen({Key? key}) : super(key: key);

  @override
  State<TransformWidgetsScreen> createState() => _TransformWidgetsScreenState();
}

class _TransformWidgetsScreenState extends State<TransformWidgetsScreen> {
  double value = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transform Widgets')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(value),
            child: const FlutterLogo(
              size: 200,
            ),
          ),
          const SizedBox(height: 70),
          Slider(
            value: value,
            onChanged: (val) {
              setState(() {
                value = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
