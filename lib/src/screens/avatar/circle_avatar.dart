import 'package:fl_components/src/models/card_content.dart';
import 'package:fl_components/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CircleAvatarScreen extends StatelessWidget {
  const CircleAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundImage: NetworkImage(AvatarCirlce.name.toString()),
              child: const Text(
                'SL',
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
      body: const Center(child: ListViewCard()),
    );
  }
}

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CardContentImage
          .cardOptionsImage.length, // Para las card con imagenes
      itemBuilder: (context, index) {
        final cardImage = CardContentImage.cardOptionsImage[index];
        return CustonCardType2(image: cardImage);
      },
    );
  }
}
