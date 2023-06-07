import 'package:flutter/material.dart';
import 'cadastro2.dart';

void main() => runApp(const Cadastro());

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
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
          const SizedBox(
            height: 80,
          ),
          const Text(
            'CADASTRO',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
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
                labelText: 'Nome',
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Data de Nascimento',
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
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
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
          const Padding(
            padding:
                EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
            //padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Confirmar Senha',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cadastro2()),
              );
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 150, 86, 247),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              minimumSize: const Size(150, 50), // define a cor do texto
            ),
            child: const Text('Próximo'),
          ),
        ],
      ),
    ));
  }
}



    // return Scaffold(
      // body: Stack(
      //   children: [
      //     Container(
      //       decoration: const BoxDecoration(
      //         image: DecorationImage(
      //           image: AssetImage('images/imgCadastro.png'),
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //         padding: const EdgeInsets.all(50),
      //         child: Center(
      //           child: Column(
      //               //crossAxisAlignment: CrossAxisAlignment.stretch,
      //               //mainAxisAlignment: MainAxisAlignment.center,
      //               children: <Widget>[
      //                 const Text(
      //                   'CADASTRO',
      //                   style: TextStyle(
      //                     fontSize: 24,
      //                     fontWeight: FontWeight.bold,
      //                     color: Colors.black,
      //                   ),
      //                   textAlign: TextAlign.center,
      //                 ),
      //                 const SizedBox(height: 40),
      //                 // const Padding(
      //                 //   padding: EdgeInsets.only(
      //                 //       left: 15.0, right: 15.0, top: 15, bottom: 0),
      //                 //   //padding: EdgeInsets.symmetric(horizontal: 15),
      //                 //   child: TextField(
      //                 //     obscureText: true,
      //                 //     decoration: InputDecoration(
      //                 //       border: OutlineInputBorder(),
      //                 //       labelText: 'Nome',
      //                 //       filled: true,
      //                 //       fillColor: Colors.white,
      //                 //     ),
      //                 //   ),
      //                 // ),
      //                 const Padding(
      //                   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      //                   padding: EdgeInsets.symmetric(horizontal: 15),
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       border: OutlineInputBorder(),
      //                       labelText: 'Nome',
      //                       filled: true,
      //                       fillColor: Colors.white,
      //                     ),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      //                   padding: EdgeInsets.symmetric(horizontal: 15),
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       border: OutlineInputBorder(),
      //                       labelText: 'Data de Nascimento',
      //                       filled: true,
      //                       fillColor: Colors.white,
      //                     ),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      //                   padding: EdgeInsets.symmetric(horizontal: 15),
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       border: OutlineInputBorder(),
      //                       labelText: 'E-mail',
      //                       filled: true,
      //                       fillColor: Colors.white,
      //                     ),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      //                   padding: EdgeInsets.symmetric(horizontal: 15),
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       border: OutlineInputBorder(),
      //                       labelText: 'Senha',
      //                       filled: true,
      //                       fillColor: Colors.white,
      //                     ),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
      //                   padding: EdgeInsets.symmetric(horizontal: 15),
      //                   child: TextField(
      //                     decoration: InputDecoration(
      //                       border: OutlineInputBorder(),
      //                       labelText: 'Confirmar Senha',
      //                       filled: true,
      //                       fillColor: Colors.white,
      //                     ),
      //                   ),
      //                 ),
      //                 const SizedBox(
      //                   height: 20,
      //                 ),
      //                 ElevatedButton(
      //                   onPressed: () {
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => const Menu()),
      //                     );
      //                   },
      //                   style: ElevatedButton.styleFrom(
      //                     foregroundColor:
      //                         const Color.fromARGB(255, 150, 86, 247),
      //                     backgroundColor: Colors.white,
      //                     padding: const EdgeInsets.symmetric(
      //                         horizontal: 50, vertical: 20),
      //                     minimumSize:
      //                         const Size(100, 30), // define a cor do texto
      //                   ),
      //                   child: const Text('Próximo'),
      //                 ),
      //                 const SizedBox(
      //                   height: 30,
      //                 ),
      //               ]),
      //         )),
      //   ],
      // ),
    //);
  
