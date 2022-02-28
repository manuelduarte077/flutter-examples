import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {},
        ),
        TextButton(
          child: const Text('Learn More'),
          onPressed: () {},
        ),
      ],
    );
  }
}
