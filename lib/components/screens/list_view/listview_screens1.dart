import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListViewScreen1 extends StatelessWidget {
  final hero = const [
    'Batman',
    'SuperMan',
    'Capitan America',
    'Iron Man ',
    'Thor',
    'Hulk',
    'Start Lord',
    'Atman',
    'Vision',
    'Dr. Strange',
  ];

  final heroDetail = const [
    'Batman - El todo poderoso',
    'SuperMan - El mas o menos',
    'Capitan America - El Capitan de America y marvel',
    'Iron Man - Genio, Filantropo, Playbou]y',
    'Thor -  El Dios del Trueno',
    'Hulk  - De mucha fuerza muscular',
    'Start Lord - El protector de la Galaxia',
    'Atman - El Hombre Ormiga',
    'Vision - La Vision de una mujer',
    'Dr. Strange - El Hombre que se llama Strange',
  ];

  const ListViewScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.separated'),
      ),
      body: ListView.separated(
        itemCount: hero.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(hero[index]),
            subtitle: Text(heroDetail[index]),
            leading: CircleAvatar(
              child: Text(hero[index][0]),
            ),
            trailing: const Icon(
              Icons.keyboard_arrow_right,
              color: Colors.indigo,
            ),
            onTap: () {
              final comic = hero[index];
              if (kDebugMode) {
                print(comic);
              }
            },
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
      ),
    );
  }
}
