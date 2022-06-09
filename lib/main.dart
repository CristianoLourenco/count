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
      debugShowCheckedModeBanner: false,
      home: HomePages(),
    );
  }
}

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int contador = 0;

  void decrement() {
    setState(() {
      contador--;
    });
    print(contador);
  }

  // o comando setState() [e] responsavel por atribuir um estado

  void increment() {
    setState(() {
      contador++;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    //const color = Color.fromARGB(255, 255, 7, 7);

// o [sacffold] e como se fosse o esqueleto da nossa aplicacao

    return Scaffold(
        //   backgroundColor: color,
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),

      // o child nos permite atribuir um unico filho
      child: Column(
        //alinhamento do eixo principal
        mainAxisAlignment: MainAxisAlignment.center,

//  Enquanto que o children representa uma lista de filhos
        children: [
          const Text(
            'Pode entrar',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),

          // const SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.all(40),
            child: Text(
              contador.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 100,
              ),
            ),
          ),

          //   const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text('Saiu',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
              ),
              const SizedBox(width: 32),
              TextButton(
                onPressed: increment,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: const Size(100, 100),
                  primary: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text('Entrou',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    )),
              ),
            ],
          )
        ],
      ),
    ));
  }
}



/*
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
   
  }
}
*/