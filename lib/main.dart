import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'menu/forum.dart';
import 'menu/menuInicial.dart';
//import 'menuInicial.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginDemo(),
    );
  }
}

class LoginDemo extends StatefulWidget {
  const LoginDemo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color.fromARGB(255, 255, 210, 245),
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
          // Padding(
          //   padding: const EdgeInsets.only(top: 40.0),
          //   child: Center(
          //     child: SizedBox(
          //         width: 250,
          //         height: 200,
          //         /*decoration: BoxDecoration(
          //           color: Colors.red,
          //           borderRadius: BorderRadius.circular(50.0)),*/
          //         child: Image.asset('images/imglogin.png')),
          //   ),
          // ),
          // const SizedBox(
          //   height: 20,
          // ),
          const SizedBox(
            height: 60,
          ),
          const Padding(
            //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          // FlatButton(
          //   onPressed: (){
          //     //TODO FORGOT PASSWORD SCREEN GOES HERE
          //   },
          //   child: Text(
          //     'Forgot Password',
          //     style: TextStyle(color: Colors.blue, fontSize: 15),
          //   ),
          // ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Menu()),
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 248, 245, 246),
              backgroundColor: const Color.fromARGB(255, 148, 51, 98),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              minimumSize: const Size(350, 50), // define a cor do texto
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
                fontSize: 16, // Defina o tamanho da letra desejado
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
                      // Ação para abrir outra página aqui
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Cadastro()),
                      );
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
