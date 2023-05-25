import 'package:fl_components/components/screens/top_widgets/widgets/widgets_1.dart';
import 'package:fl_components/components/screens/top_widgets/widgets/widgets_2.dart';
import 'package:fl_components/components/screens/top_widgets/widgets/widgets_3.dart';
import 'package:fl_components/components/screens/top_widgets/widgets/widgets_4.dart';
import 'package:fl_components/components/screens/top_widgets/widgets/widgets_5.dart';
import 'package:flutter/material.dart';

class TopWidgetsScreen extends StatefulWidget {
  const TopWidgetsScreen({Key? key}) : super(key: key);

  @override
  State<TopWidgetsScreen> createState() => _TopWidgetsScreenState();
}

class _TopWidgetsScreenState extends State<TopWidgetsScreen> {
  onButtonTap(Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (BuildContext context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Top Widgets'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopWindgetsButton(
              text: '#1: Scaffold',
              actionTap: () {
                onButtonTap((const ScaffolWidgetsScreen()));
              },
            ),
            const SizedBox(height: 16),
            TopWindgetsButton(
              text: '#2: Stack',
              actionTap: () {
                onButtonTap((const StackWidgetsScreen()));
              },
            ),
            const SizedBox(height: 16),
            TopWindgetsButton(
                text: '#3: Transform',
                actionTap: () {
                  onButtonTap((const TransformWidgetsScreen()));
                }),
            const SizedBox(height: 16),
            TopWindgetsButton(
                text: '#4: Animation Builder',
                actionTap: () {
                  onButtonTap((const TwewnAnimationBuilderScreen()));
                }),
            const SizedBox(height: 16),
            TopWindgetsButton(
                text: '#5: SliverAppBar',
                actionTap: () {
                  onButtonTap((const SliverAppBarWidgetsScreen()));
                }),
          ],
        ),
      ),
    );
  }
}

class TopWindgetsButton extends StatelessWidget {
  final String text;
  final VoidCallback? actionTap;
  const TopWindgetsButton({
    Key? key,
    required this.text,
    this.actionTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: MaterialButton(
        elevation: 0,
        color: Theme.of(context).primaryColor,
        onPressed: actionTap,
        child: Text(text,
            style: const TextStyle(color: Colors.white, fontSize: 30)),
      ),
    );
  }
}
