import 'package:fl_components/components/theme/app_theme.dart';
import 'package:fl_components/models/card_content.dart';
import 'package:flutter/material.dart';

import 'button_options.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({
    Key? key,
    required this.image,
  }) : super(key: key);

  final CardContentImage image;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      clipBehavior: Clip.antiAlias,
      elevation: 15,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: <Widget>[
          Container(
            alignment: AlignmentDirectional.topStart,
            padding: const EdgeInsets.only(top: 25, left: 25, bottom: 10),
            child: Text(
              image.title,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          FadeInImage(
            image: NetworkImage(
              image.cardImage,
            ),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          Container(
            padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
            alignment: AlignmentDirectional.center,
            child: Text(
              image.description,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
          const OptionsButton(),
        ],
      ),
    );
  }
}
