import 'package:fl_components/models/card_content.dart';
import 'package:flutter/material.dart';

import 'button_options.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
    required this.card,
  }) : super(key: key);

  final CardContent card;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.account_box),
            title: Text(card.title),
            subtitle: Text(card.description),
          ),
          const OptionsButton()
        ],
      ),
    );
  }
}
