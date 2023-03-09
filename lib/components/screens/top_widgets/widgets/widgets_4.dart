import 'package:flutter/material.dart';

class TwewnAnimationBuilderScreen extends StatelessWidget {
  const TwewnAnimationBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation Builder')),
      body: Center(
        child: TweenAnimationBuilder<int>(
          duration: const Duration(seconds: 3),
          tween: IntTween(begin: 0, end: 100),
          builder: (context, value, _) {
            return Text(
              value.toString(),
              style:
                  const TextStyle(fontSize: 150, fontWeight: FontWeight.bold),
            );
          },
        ),
      ),
    );
  }
}
