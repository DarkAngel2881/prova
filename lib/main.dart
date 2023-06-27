import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _backgroundColor = Colors.white;

  void _changeColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Changer'),
      ),
      body: Container(
        color: _backgroundColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
          height: 100,
          width: 100,
          
          child: FloatingActionButton(
            onPressed: () => _changeColor(Colors.blue),
          )),
    );
  }
}
