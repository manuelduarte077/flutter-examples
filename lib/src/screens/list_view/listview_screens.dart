import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final hero = const [
    'Batman',
    'SuperMan',
    'Capitan America',
    'Iron Man',
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
  final game = const [
    'Mario Bros',
    'Pess Mobile',
    'San Andreas',
    'Delta Force 4'
  ];
  const ListViewScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: <Widget>[
          const CircleAvatar(
            maxRadius: 50,
            backgroundColor: Colors.black,
            child: Icon(Icons.person, color: Colors.white, size: 50),
          ),
          const Center(
            child: Text(
              'Manuel Duarte',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 2,
          ),
          ...hero.map((options) => ListTile(
                title: Text(options),
                leading: const Icon(Icons.games),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )),
        ],
      ),

      //     ListView(
      //   children: [
      //     ...game.map((options) => ListTile(
      //           title: Text(options),
      //           leading: const Icon(Icons.games),
      //         )),
      //   ],
      // ),

      //     ListView.builder(
      //   itemCount: hero.length,
      //   itemBuilder: (context, index) {
      //     return ListTile(
      //       leading: const Icon(Icons.person),
      //       title: Text(hero[index]),
      //     );
      //   },
      // ),
    );
  }
}
