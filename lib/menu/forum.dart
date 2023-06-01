import 'package:flutter/material.dart';

void main() => runApp(const Forum());

class Forum extends StatelessWidget {
  const Forum({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 234, 224, 245),
      body: Stack(
        children: <Widget>[
          // const Text(
          //   'FÓRUM',
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.black,
          //   ),
          //   textAlign: TextAlign.center,
          // ),
          Padding(
              padding: const EdgeInsets.all(50),
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => const Menu()),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(255, 150, 86, 247),
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 50, vertical: 20),
                          minimumSize:
                              const Size(100, 30), // define a cor do texto
                        ),
                        child: const Text('Acessar ao Whatsapp'),
                      ),
                    ]),
              )),
        ],
      ),
    );
  }
}
