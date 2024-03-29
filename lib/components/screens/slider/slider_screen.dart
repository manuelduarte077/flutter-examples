import 'package:fl_components/components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100; // default value is 100
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 50.0,
            max: 400.0,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            onChanged: _sliderEnabled
                ? (double value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  }
                : null,
          ),
          SwitchListTile.adaptive(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar & deshabilitar'),
            value: _sliderEnabled,
            onChanged: (value) {
              setState(() {
                _sliderEnabled = value;
              });
            },
          ),
          const AboutListTile(),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
