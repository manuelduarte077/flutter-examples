import 'package:animate_do/animate_do.dart';
import 'package:fl_components/designs/emergency/widgets/button_card.dart';
import 'package:fl_components/designs/emergency/widgets/icon_header.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {
  final IconData icon;
  final String texto;
  final String status;
  final Color color1;
  final Color color2;

  ItemBoton(this.icon, this.texto, this.color1, this.color2, this.status);
}

final items = <ItemBoton>[
  ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
      const Color(0xff6989F5), const Color(0xff906EF5), 'En camino'),
  ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2),
      const Color(0xff536CF6), 'En camino'),
  ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
      const Color(0xffF2D572), const Color(0xffE06AA3), 'Entregado'),
  ItemBoton(FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183),
      const Color(0xff46997D), 'Entregado'),
  ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
      const Color(0xff6989F5), const Color(0xff906EF5), 'Entregado'),
  ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2),
      const Color(0xff536CF6), 'Entregado'),
  ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
      const Color(0xffF2D572), const Color(0xffE06AA3), 'Entregado'),
  ItemBoton(FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183),
      const Color(0xff46997D), 'Entregado'),
  ItemBoton(FontAwesomeIcons.carBurst, 'Motor Accident',
      const Color(0xff6989F5), const Color(0xff906EF5), 'Entregado'),
  ItemBoton(FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2),
      const Color(0xff536CF6), 'Entregado'),
  ItemBoton(FontAwesomeIcons.masksTheater, 'Theft / Harrasement',
      const Color(0xffF2D572), const Color(0xffE06AA3), 'Delivered'),
  ItemBoton(FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183),
      const Color(0xff46997D), 'Entregado'),
];

List<Widget> _botonesGrid() {
  return items.map((e) {
    return FadeInLeft(
      child: ButtonCard(
        icon: e.icon,
        title: e.texto,
        subtitle: e.status,
        color1: e.color1,
        color2: e.color2,
        onPressed: () {
          print('Hola Mundo');
        },
      ),
    );
  }).toList();
}

class EmergencyScreen extends StatelessWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 150),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const SizedBox(height: 80),
                ..._botonesGrid(),
              ],
            ),
          ),
          const _Encabezado(),
        ],
      ),
    );
  }
}

class _Encabezado extends StatelessWidget {
  const _Encabezado();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const IconHeader(
          icon: FontAwesomeIcons.plus,
          title: 'Haz solicitado',
          subtitle: 'Asistencia Médica',
          color1: Color(0xff526BF6),
          color2: Color(0xff67ACF2),
        ),
        Positioned(
          right: 0,
          top: 30,
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(15.0),
            child: const FaIcon(FontAwesomeIcons.ellipsisVertical,
                color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IconHeader(
      icon: FontAwesomeIcons.plus,
      title: 'Haz solicitado',
      subtitle: 'Asistencia Médica',
      color1: Color(0xff526BF6),
      color2: Color(0xff67ACF2),
    );
  }
}
