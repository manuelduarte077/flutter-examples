import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeBottom: true,
      removeTop: true,
      child: Scaffold(
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage.assetNetwork(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: 'assets/jar-loading.gif',
              image: 'https://picsum.photos/500/300?image=${index + 1}',
            );
          },
        ),
      ),
    );
  }
}
