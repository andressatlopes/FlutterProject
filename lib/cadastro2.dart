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
  List<String> tiposCancer = ['Her 2', 'Triplo Negativo', 'Hormonal'];
  String? selectedTipoCancer;

  String email = ''; // Variável para armazenar o e-mail fornecido pelo usuário
  String password =
      ''; // Variável para armazenar a senha fornecida pelo usuário

  Future<void> signUpWithEmailAndPassword() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
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
            // Resto do código...
            ElevatedButton(
              onPressed: () {
                signUpWithEmailAndPassword();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 248, 245, 246),
                backgroundColor: const Color.fromARGB(255, 148, 51, 98),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                minimumSize: const Size(350, 50),
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
