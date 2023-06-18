import 'package:flutter/material.dart';
import 'main.dart';
import 'menu/menuInicial.dart';

void main() => runApp(const Cadastro2());

class Cadastro2 extends StatelessWidget {
  const Cadastro2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAcompanhante = false;

    // void atualizarAcompanhante(bool value) {
    //   context.read<Cadastro2State>().setState(() {
    //     isAcompanhante = value;
    //   });
    // }

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/imgCadastro.png"),
            fit: BoxFit.cover,
            opacity: 0.3,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 80),
            const Text(
              'CADASTRO',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const Text(
              'Você é acompanhante?',
              style: TextStyle(fontSize: 18),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: true,
                    groupValue: isAcompanhante,
                    onChanged: (bool? value) {
                      if (value != null) {
                        //context.read<Cadastro2>().atualizarAcompanhante(value);
                      }
                    },
                  ),
                  const Text('Sim'),
                  Radio(
                    value: false,
                    groupValue: isAcompanhante,
                    onChanged: (bool? value) {
                      if (value != null) {
                        //context.read<Cadastro2>().atualizarAcompanhante(value);
                      }
                    },
                  ),
                  const Text('Não'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Você é paciente?',
              style: TextStyle(fontSize: 18),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: true,
                    groupValue: isAcompanhante,
                    onChanged: (bool? value) {
                      if (value != null) {
                        //context.read<Cadastro2>().atualizarAcompanhante(value);
                      }
                    },
                  ),
                  const Text('Sim'),
                  Radio(
                    value: false,
                    groupValue: isAcompanhante,
                    onChanged: (bool? value) {
                      if (value != null) {
                        //context.read<Cadastro2>().atualizarAcompanhante(value);
                      }
                    },
                  ),
                  const Text('Não'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Se você é paciente, com quantos anos',
              style: TextStyle(fontSize: 16),
            ),
            const Text(
              ' descobriu o câncer de mama?',
              style: TextStyle(fontSize: 16),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Qual o tipo de câncer?',
              style: TextStyle(fontSize: 16),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 150, 86, 247),
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                minimumSize: const Size(150, 50),
              ),
              child: const Text('Cadastrar-se'),
            ),
          ],
        ),
      ),
    );
  }
}
