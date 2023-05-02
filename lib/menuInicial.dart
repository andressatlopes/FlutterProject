// ignore_for_file: file_names
import 'package:flutter/material.dart';

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 203, 181, 235),
      body: Container(
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
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
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 5, 5, 5),
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
                    // leading: ClipOval(
                    //   child: Image.asset(
                    //     'images/simbolo2.png',
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                    title: const Text(
                      'CANCÊR DE MAMA',
                      style: TextStyle(
                        color: Color.fromARGB(247, 5, 5, 5),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      // Lógica para tratar o clique na opção 1
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: ClipOval(
                      child:
                          Image.asset('images/paciente.png', fit: BoxFit.fill),
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
                    leading: ClipOval(
                      child: Image.asset('images/forum.png', fit: BoxFit.fill),
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
                      // Lógica para tratar o clique na opção 3
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    // leading: ClipOval(
                    //   child: Image.asset('images/dicas.png', fit: BoxFit.fill),
                    // ),
                    title: const Text(
                      'DICAS E DÚVIDAS',
                      style: TextStyle(
                        color: Color.fromARGB(247, 22, 9, 9),
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      // Lógica para tratar o clique na opção 3
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
