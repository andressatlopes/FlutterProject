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
      backgroundColor: const Color.fromARGB(247, 250, 185, 239),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 150, top: 45, bottom: 8),
            child: Text(
              'MENU INICIAL',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(247, 143, 12, 160),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/simbolo.png'),
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    foregroundColor: Colors.white,
                    //backgroundBlendMode: BlendMode.darken,
                    
                  ),
                  title: const Text(
                    'CANCÊR DE MAMA',
                    style: TextStyle(
                      color: Color.fromARGB(247, 86, 85, 87),
                      fontSize: 17,
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
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/paciente.png'),
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    foregroundColor: Colors.white,
                  ),
                  title: const Text(
                    'PACIENTE',
                    style: TextStyle(
                      color: Color.fromARGB(247, 86, 85, 87),
                      fontSize: 17,
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
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/forum.png'),
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    foregroundColor: Colors.white,
                  ),
                  title: const Text(
                    'FÓRUM',
                    style: TextStyle(
                      color: Color.fromARGB(247, 86, 85, 87),
                      fontSize: 17,
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
                  leading: const CircleAvatar(
                    backgroundImage: AssetImage('images/dicas.png'),
                    backgroundColor: Colors.transparent,
                    radius: 20,
                    foregroundColor: Colors.white,
                  ),
                  title: const Text(
                    'DICAS E DÚVIDAS',
                    style: TextStyle(
                      color: Color.fromARGB(247, 86, 85, 87),
                      fontSize: 17,
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
    );
  }
}
