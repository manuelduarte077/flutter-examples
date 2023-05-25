import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  final String? title = 'Alert';
  final String? content = 'This is a simple alert dialog';

  static const textButton = ['OK', 'Cancel'];

  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text(title.toString()),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(content.toString()),
              const SizedBox(height: 10),
              const FlutterLogo(size: 100),
            ],
          ),
          actions: <Widget>[
            TextButtonAlert(
              text: "Cancel",
              textColor: Colors.red,
              pressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButtonAlert(
              text: "ok",
              textColor: Colors.blue,
              pressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title.toString()),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(10),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(content.toString()),
              const SizedBox(height: 10),
              const FlutterLogo(size: 100),
            ],
          ),
          actions: <Widget>[
            TextButtonAlert(
              text: "Cancel",
              textColor: Colors.red,
              pressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButtonAlert(
              text: "ok",
              textColor: Colors.blue,
              pressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () {
            Theme.of(context).platform == TargetPlatform.iOS
                ? displayDialogIOS(context)
                : displayDialogAndroid(context);
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text(
              'Show Alert',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.chevron_left),
      ),
    );
  }
}

class TextButtonAlert extends StatelessWidget {
  final String text;
  final MaterialColor textColor;
  final VoidCallback? pressed;

  const TextButtonAlert({
    required this.text,
    required this.textColor,
    required this.pressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: pressed,
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }
}
