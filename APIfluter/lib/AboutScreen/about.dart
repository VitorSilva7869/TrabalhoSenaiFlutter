import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomeScreen/HomeScreeen.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o projeto'),
        backgroundColor: Colors.green,
      ), // AppBar
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Esse projeto tem por objetivo gerar contatos aleatorios de usuarios Utilizando apenas um botão.\n' +
              'Projeto orientado pelo docente Wellington Lacerda,\n' +
              'turma 77167 - Desenvolvimento de Sistemas 2021-2 a 2022-2\n',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            const Image(
              image: NetworkImage(
                  "https://logos-download.com/wp-content/uploads/2020/06/Senai_Logo.png",
                  scale: 60),
            ),
            const Text(
              '\nProgramador\n',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const Text(
              '\nVitor Silva Santos\n',
              style: TextStyle(color: Colors.black, fontSize: 22),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              child: const Text('\nProxima pagina\n'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 18))),
            ), // ElevatedButton
          ], //children const
        ), // Column
      ),
      /* drawer: Center( //TESTE
        child: Image.network(
          "https://logos-download.com/wp-content/uploads/2020/06/Senai_Logo.png",
          height: 175.0
        ),
      ), // Center */
    ); // Scaffold
  }
}
