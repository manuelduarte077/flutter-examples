import 'package:flutter/material.dart';

class SliverAppBarWidgetsScreen extends StatelessWidget {
  const SliverAppBarWidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text('SliverAppBar ')),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: const [
                StretchMode.zoomBackground, //  Default
                StretchMode.blurBackground,
                // StretchMode.fadeTitle,
              ],
              background: Container(
                color: Colors.black,
                child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/en/thumb/4/47/FC_Barcelona_%28crest%29.svg/1200px-FC_Barcelona_%28crest%29.svg.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
