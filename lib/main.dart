import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

/// Main class
class Main extends StatefulWidget {
  /// Main class constructor
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final String _titleText = 'Random color';
  final String _mainText = 'Hey there';

  static const whiteColorCode = 0xFFFFFFFF;
  Color _color = const Color(whiteColorCode);

  void _changeBackground() {
    setState(() {
      final newColorCode = Random().nextInt(whiteColorCode);
      _color = Color(newColorCode).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_titleText),
        ),
        body: GestureDetector(
          onTap: _changeBackground,
          child: Container(
            color: _color,
            child: Center(
              child: Text(
                _mainText,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
