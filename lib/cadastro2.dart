import 'package:flutter/material.dart';
import 'main.dart';
import 'menu/menuInicial.dart';

void main() => runApp(const Cadastro2());

class Cadastro2 extends StatefulWidget {
  const Cadastro2({Key? key}) : super(key: key);

  @override
  _Cadastro2State createState() => _Cadastro2State();
}

class _Cadastro2State extends State<Cadastro2> {
  bool isAcompanhante = false;
  List<String> tiposCancer = ['Her 2', 'Triplo Negativo', 'Hormonal'];
  String? selectedTipoCancer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/cadastro.png"),
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
                color: Color.fromARGB(255, 148, 51, 98),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            const Text(
              'Você é acompanhante?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
                        setState(() {
                          isAcompanhante = value;
                        });
                      }
                    },
                  ),
                  const Text('Sim'),
                  Radio(
                    value: false,
                    groupValue: isAcompanhante,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          isAcompanhante = value;
                        });
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
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
                        setState(() {
                          isAcompanhante = value;
                        });
                      }
                    },
                  ),
                  const Text('Sim'),
                  Radio(
                    value: false,
                    groupValue: isAcompanhante,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          isAcompanhante = value;
                        });
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
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              ' descobriu o câncer de mama?',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text('Qual o tipo de câncer?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: DropdownButtonFormField<String>(
                value: selectedTipoCancer,
                onChanged: (String? value) {
                  setState(() {
                    selectedTipoCancer = value;
                  });
                },
                items:
                    tiposCancer.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: const InputDecoration(
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
                foregroundColor: const Color.fromARGB(255, 148, 51, 98),
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                minimumSize: const Size(150, 50),
              ),
              child: const Text(
                'Cadastrar-se',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
