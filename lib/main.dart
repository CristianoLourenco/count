import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
// no flutter tudo sao widgets, desde telas, botoes , texto...

// os widgets classificam em dois tipos o stateless e o stateul

// o stateless e aquele que nao possui alteracao de estado(estatico)

// o statefull ao contraeio do stateless possui alteracao de estado(dinamico)

// para criar um widget aqui no vs code basta digital stless/stful

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

