import 'package:flutter/material.dart';
import 'forum.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'https://parte-html-cancer-de-mama.tallesgabriel1.repl.co/cancerdemama.html');
final Uri _url2 = Uri.parse(
    'https://parte-html-cancer-de-mama.tallesgabriel1.repl.co/DicaseDuvidas.html');

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 210, 245),
        body: Center(
          child: Container(
            width: MediaQuery.of(context).size.width *
                0.8, // Defina a largura desejada para o Container
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 100,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 100, top: 45, bottom: 8),
                  child: Text(
                    'MENU INICIAL',
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 148, 51, 98),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          'images/imgcancer.png',
                          fit: BoxFit.cover,
                          width: 40, // Defina o tamanho desejado para a imagem
                          height: 40, // Defina o tamanho desejado para a imagem
                        ),
                        title: const Text(
                          'CANCÊR DE MAMA',
                          style: TextStyle(
                            color: Color.fromARGB(247, 5, 5, 5),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () async {
                          await launchUrl(_url);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/imgpaciente.png',
                          fit: BoxFit.cover,
                          width: 40, // Defina o tamanho desejado para a imagem
                          height: 40, // Defina o tamanho desejado para a imagem
                        ),
                        title: const Text(
                          'PACIENTE',
                          style: TextStyle(
                            color: Color.fromARGB(247, 10, 10, 10),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          // Lógica para tratar o clique na opção 2
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/forum.png',
                          fit: BoxFit.cover,
                          width: 40, // Defina o tamanho desejado para a imagem
                          height: 40, // Defina o tamanho desejado para a imagem
                        ),
                        title: const Text(
                          'FÓRUM',
                          style: TextStyle(
                            color: Color.fromARGB(247, 14, 13, 13),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Forum()),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        leading: Image.asset(
                          'images/imgdicas.png',
                          fit: BoxFit.cover,
                          width: 40, // Defina o tamanho desejado para a imagem
                          height: 40, // Defina o tamanho desejado para a imagem
                        ),
                        title: const Text(
                          'DICAS E DÚVIDAS',
                          style: TextStyle(
                            color: Color.fromARGB(247, 22, 9, 9),
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onTap: () async {
                          await launchUrl(_url2);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
