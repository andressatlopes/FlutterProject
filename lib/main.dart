import 'package:flutter/material.dart';
import 'menuInicial.dart';

void main() {
  runApp(const MyApp());
}

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
      backgroundColor: const Color.fromARGB(255, 252, 207, 244),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Text(
              'LOGIN',
              style: TextStyle(
                  color: Color.fromARGB(247, 143, 12, 160),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Center(
                child: SizedBox(
                    width: 150,
                    height: 100,
                    child: Image.asset('images/simbolo.png')),
              ),
            ),
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
                    hintText: 'Username, Email, PhoneNumber '),
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
                    hintText: 'Password'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: const [
            //     // outro widget aqui, se houver
            //     Expanded(
            //       child: Align(
            //         alignment: Alignment.centerLeft,
            //         child: Text(
            //           'Forgot Password?',
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 12,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menu()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: 50, vertical: 20), // define o padding
                minimumSize: const Size(150, 50), // define o tamanho
                backgroundColor: const Color.fromARGB(247, 143, 12, 160),
              ),
              child: const Text('Sign in'),
            ),
            const SizedBox(
              height: 200,
            ),
            const Text(
              'Dont have an account yet? SIGN UP',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
