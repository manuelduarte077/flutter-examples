import 'package:fl_components/models/card_content.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView.builder(
        itemCount: CardContentImage
            .cardOptionsImage.length, // Para las card con imagenes
        itemBuilder: (context, index) {
          final cardImage = CardContentImage.cardOptionsImage[index];
          return CustomCardType2(image: cardImage);
        },
      ),
    );
  }
}
