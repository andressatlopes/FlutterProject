import 'package:flutter/material.dart';
import 'main.dart';
import 'menu/menuInicial.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Cadastro2());
}

class Cadastro2 extends StatefulWidget {
  const Cadastro2({Key? key}) : super(key: key);

  @override
  _Cadastro2State createState() => _Cadastro2State();
}

class _Cadastro2State extends State<Cadastro2> {
  bool isAcompanhante = false;
  bool isPaciente = false;
  List<String> tiposCancer = ['Her 2', 'Triplo Negativo', 'Hormonal'];
  String? selectedTipoCancer;

  String email = ''; // Variável para armazenar o e-mail fornecido pelo usuário
  String password = ''; // Variável para armazenar a senha fornecida pelo usuário

  Future<void> signUpWithEmailAndPassword() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        // Usuário criado com sucesso, faça algo aqui
      }
    } catch (e) {
      // Ocorreu um erro ao criar o usuário, trate-o aqui
      print('Erro ao criar usuário: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/cadastro.png"),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: ListView(
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
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Você é acompanhante?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
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
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Você é paciente?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: true,
                    groupValue: isPaciente,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          isPaciente = value;
                        });
                      }
                    },
                  ),
                  const Text('Sim'),
                  Radio(
                    value: false,
                    groupValue: isPaciente,
                    onChanged: (bool? value) {
                      if (value != null) {
                        setState(() {
                          isPaciente = value;
                        });
                      }
                    },
                  ),
                  const Text('Não'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'Se você é paciente, com quantos anos',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                ' descobriu o câncer de mama?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
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
            const Align(
              alignment: Alignment.center,
              child: Text('Qual o tipo de câncer?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
            ),
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
            FractionallySizedBox(
              widthFactor:
                  0.8, // Defina o fator de largura desejado para o botão
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Menu()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 248, 245, 246),
                  backgroundColor: const Color.fromARGB(255, 148, 51, 98),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                  // minimumSize: const Size(300, 50), // Remova essa linha
                ),
                child: const Text(
                  'Cadastrar-se',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
