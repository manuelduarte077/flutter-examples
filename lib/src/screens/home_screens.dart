import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Componets'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.access_time_filled),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const ListViewScreen(),
              // );
              // Navegar a otra pantalla
              Navigator.pushNamed(context, 'listview1');
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
