import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'menu/forum.dart';
import 'menu/menuInicial.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDJJI5hxVzrjVWPyxqaLvTZF1tH4xWYuDg',
      appId: '1:766213068289:web:6d94302cd2928d4e82d200',
      messagingSenderId: '766213068289',
      projectId: 'medicinacelso',
      authDomain: 'medicinacelso.firebaseapp.com',
      storageBucket: 'medicinacelso.appspot.com',
      measurementId: 'G-TT4GXQPSV8',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({Key? key}) : super(key: key);

  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  String email = ''; // Variável para armazenar o e-mail fornecido pelo usuário
  String password =
      ''; // Variável para armazenar a senha fornecida pelo usuário

  Future<void> signInWithEmailAndPassword() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      User? user = userCredential.user;
      if (user != null) {
        // Usuário autenticado com sucesso, faça algo aqui
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Menu()),
        );
      }
    } catch (e) {
      // Ocorreu um erro ao autenticar o usuário, trate-o aqui
      print('Erro ao autenticar usuário: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/imgLogin2.png"),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 110,
            ),
            const Text(
              'MamApp',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 148, 51, 98),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Seja bem-vinda!',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 148, 51, 98),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    password = value;
                  });
                },
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                signInWithEmailAndPassword();
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 248, 245, 246),
                backgroundColor: const Color.fromARGB(255, 148, 51, 98),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                minimumSize: const Size(350, 50),
              ),
              child: const Text(
                'ENTRAR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            RichText(
              text: TextSpan(
                text: 'É nova por aqui? ',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Criar uma conta',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 148, 51, 98),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Cadastro(),
                          ),
                        );
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
