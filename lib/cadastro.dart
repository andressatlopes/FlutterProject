import 'package:flutter/material.dart';

void main() => runApp(const Cadastro());

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    const double opacityValue = 7.0;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/imgCadastro.png'),
                fit: BoxFit.cover,
                opacity: opacityValue,
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(50),
              child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'CADASTRO',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                        decoration: const InputDecoration(
                            labelText: "Nome",
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                        decoration: const InputDecoration(
                            labelText: "Data de Nascimento",
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autofocus: true,
                        keyboardType: TextInputType.text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                        decoration: const InputDecoration(
                            labelText: "Email",
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autofocus: true,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                        decoration: const InputDecoration(
                            labelText: "Senha",
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        autofocus: true,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 15),
                        decoration: const InputDecoration(
                            labelText: "Confirmar Senha",
                            labelStyle: TextStyle(color: Colors.white)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                              const Size(150, 50), // define a cor do texto
                        ),
                        child: const Text('Próximo'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ]),
              )),
        ],
      ),
    );
  }
}
