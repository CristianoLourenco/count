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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      backgroundColor: Colors.black,
      body: Column(

        //alinhamento do eixo principal
        mainAxisAlignment: MainAxisAlignment.center,
       
       //elementos filhos
        children: const [
            
            Text('Pode entrar', style:TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight:  FontWeight.w700,
            )  , ),
            
            
            Text('0', style: TextStyle(
              color: Colors.white,
              fontSize: 100,
            ),),
            
        ],
      ),
    );
  }
}
