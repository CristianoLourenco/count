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

void decrement() {
  // ignore: avoid_print
  print('Decrementou');
}

void increment() {
  print('Increment');
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const color = Colors.black;

    return Scaffold(
      backgroundColor: color,
      body: Column(
        //alinhamento do eixo principal
        mainAxisAlignment: MainAxisAlignment.center,

        //elementos filhos
        children: [
          const Text(
            'Pode entrar',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          const Text(
            '0',
            style: TextStyle(
              color: Colors.white,
              fontSize: 100,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed:decrement,
                
                   style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                 shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  
                ),
                child: const Text('Saiu', style: TextStyle( color: Colors.black, fontSize: 20,)
              ),),
              
              const SizedBox(width: 32),

               TextButton(
                onPressed:increment,
                
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),

                child: const Text('Entrou', style: TextStyle( color: Colors.black, fontSize: 20,)
              ),),
            ],
          )
        ],
      ),
    );
  }
}
