import 'package:fl_components/src/models/card_content.dart';
import 'package:flutter/material.dart';

class CustonCardType1 extends StatelessWidget {
  const CustonCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CardContent.cardOptions.length,
      itemBuilder: (context, index) {
        final card = CardContent.cardOptions[index];
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
      },
    );
  }
}

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
