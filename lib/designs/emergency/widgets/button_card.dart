import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonCard extends StatelessWidget {
  const ButtonCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color1,
    required this.color2,
    this.onPressed,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color1;
  final Color color2;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Stack(
        children: [
          _ButtonCardBackground(icon, color1, color2),
          Row(
            children: [
              const SizedBox(height: 140, width: 40),
              FaIcon(icon, color: Colors.white, size: 40),
              const SizedBox(width: 20),
              Expanded(
                child: ListTile(
                  title: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              const FaIcon(FontAwesomeIcons.arrowRight, color: Colors.white),
              const SizedBox(width: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class _ButtonCardBackground extends StatelessWidget {
  final IconData icon;
  final Color color1;
  final Color color2;
  const _ButtonCardBackground(
    this.icon,
    this.color1,
    this.color2,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 6),
            blurRadius: 10,
          ),
        ],
        gradient: LinearGradient(
          colors: <Color>[
            color1,
            color2,
          ],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: FaIcon(
                icon,
                size: 150,
                color: Colors.white.withOpacity(0.2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
