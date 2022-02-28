import 'package:flutter/material.dart';
import 'package:fl_components/src/models/card_content.dart';

import 'button_options.dart';

class CustonCardType1 extends StatelessWidget {
  const CustonCardType1({
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
            subtitle: Text(card.description ?? 'No title'),
          ),
          const OptionsButton()
        ],
      ),
    );
  }
}
