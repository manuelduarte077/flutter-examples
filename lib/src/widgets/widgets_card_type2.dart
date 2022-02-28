import 'package:fl_components/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/src/models/card_content.dart';

import 'button_options.dart';

class CustonCardType2 extends StatelessWidget {
  const CustonCardType2({
    Key? key,
    required this.cardImage,
  }) : super(key: key);

  final CardContentImage cardImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      clipBehavior: Clip.antiAlias,
      elevation: 15,
      child: Column(
        children: <Widget>[
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 25, left: 25),
            child: Text(
              cardImage.title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          FadeInImage(
            image: NetworkImage(cardImage.cardImage),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          Text(cardImage.description, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 10),
          const OptionsButton(),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
    );
  }
}
