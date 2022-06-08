import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}): super(key: key);

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: const Text('Hafgf rsddd'),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.black,
        alignment: Alignment.center,
        child: const Text('O ola mundo!'),
      ),
    );
  }
}