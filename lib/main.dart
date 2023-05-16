import 'package:flutter/material.dart';

import 'cadastro.dart';
import 'forum.dart';
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
      backgroundColor: const Color.fromARGB(255, 234, 224, 245),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 80,
            ),
            const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 40.0),
            //   child: Center(
            //     child: SizedBox(
            //         width: 150,
            //         height: 100,
            //         /*decoration: BoxDecoration(
            //             color: Colors.red,
            //             borderRadius: BorderRadius.circular(50.0)),*/
            //         child: Image.asset('images/imgLogin.png')),
            //   ),
            // ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter valid email id as abc@gmail.com',
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
                  labelText: 'Password',
                  hintText: 'Enter secure password',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
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
                  MaterialPageRoute(builder: (context) => const Cadastro()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 150, 86, 247),
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                minimumSize: const Size(150, 50), // define a cor do texto
              ),
              child: const Text('ENTRAR'),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text('Novo usuário? Criar uma conta')
          ],
        ),
      ),
    );
  }
}


 // body: SingleChildScrollView(

    
      //   child: Column(
      //     children: <Widget>[
      //       const SizedBox(
      //         height: 160,
      //       ),
      //       const Text(
      //         'LOGIN',
      //         style: TextStyle(
      //             color: Color.fromARGB(247, 3, 3, 3),
      //             fontSize: 30,
      //             fontWeight: FontWeight.bold),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(top: 20.0),
      //         child: Center(
      //           child: SizedBox(
      //               width: 250,
      //               height: 130,
      //               child: Image.asset('images/simbolo.png')),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 50,
      //       ),
      //       TextField(
      //         decoration: InputDecoration(
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(30),
      //           ),
      //           labelText: 'Email',
      //           labelStyle: const TextStyle(
      //             color: Color.fromARGB(247, 37, 37, 37),
      //           ),
      //           filled: true,
      //           fillColor: Colors.white,
      //           contentPadding:
      //               const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      //         ),
      //         style: const TextStyle(fontSize: 16),
      //       ),

      //       const Padding(
      //         padding:
      //             EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
      //         //padding: EdgeInsets.symmetric(horizontal: 15),
      //         child: TextField(
      //           obscureText: true,
      //           decoration: InputDecoration(
      //             border: OutlineInputBorder(),
      //             labelText: 'Senha',
      //             labelStyle: TextStyle(
      //               color: Color.fromARGB(247, 37, 37, 37),
      //             ),
      //             filled: true,
      //             fillColor: Colors.white,
      //             //hintText: 'Senha'
      //           ),
      //         ),
      //       ),
      //       const SizedBox(
      //         height: 30,
      //       ),
      //       // Row(
      //       //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       //   children: const [
      //       //     // outro widget aqui, se houver
      //       //     Expanded(
      //       //       child: Align(
      //       //         alignment: Alignment.centerLeft,
      //       //         child: Text(
      //       //           'Forgot Password?',
      //       //           style: TextStyle(
      //       //             color: Colors.black,
      //       //             fontSize: 12,
      //       //             fontWeight: FontWeight.bold,
      //       //           ),
      //       //         ),
      //       //       ),
      //       //     ),
      //       //   ],
      //       // ),
      //       // const Text(
      //       //   'Forgot Password?',
      //       //   style: TextStyle(
      //       //       color: Colors.black,
      //       //       fontSize: 12,
      //       //       fontWeight: FontWeight.bold),
      //       // ),
      //       // const SizedBox(
      //       //   height: 20,
      //       // ),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Menu()),
      //           );
      //         },
      //         style: ElevatedButton.styleFrom(
      //           foregroundColor: const Color.fromARGB(255, 203, 181, 235),
      //           backgroundColor: Colors.white,
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      //           minimumSize: const Size(150, 50), // define a cor do texto
      //         ),
      //         child: const Text('ENTRAR'),
      //       ),

      //       const SizedBox(
      //         height: 70,
      //       ),
      //       GestureDetector(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(builder: (context) => const Menu()),
      //           );
      //         },
      //         child: const Text(
      //           'Ainda não tem uma conta? CADASTRAR-SE',
      //           style: TextStyle(
      //             decoration: TextDecoration.underline,
      //             color: Colors.black,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),