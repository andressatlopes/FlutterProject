// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'forum.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'https://parte-html-cancer-de-mama.tallesgabriel1.repl.co/cancerdemama.html');

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF8C759F),
        body: Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height -
              MediaQuery.of(context).size.width * 0.05,
          decoration: BoxDecoration(
            color: const Color.fromARGB(
                255, 255, 210, 245), // Set the background color
            borderRadius: BorderRadius.circular(10), // Set the border radius
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 100, right: 30, bottom: 50),
                child: Text(
                  'MENU INICIAL',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.08,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 5, 5, 5),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.06),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFd2acd1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () async {
                          await launchUrl(_url);
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 4 / 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/imgcancer.png',
                                width:
                                    MediaQuery.of(context).size.width * 0.135,
                                height:
                                    MediaQuery.of(context).size.width * 0.135,
                              ),
                              Text(
                                'CANCÊR DE MAMA',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color.fromARGB(247, 5, 5, 5),
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.06),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFd2acd1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () async {
                          await launchUrl(_url);
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 4 / 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/paciente.png',
                                width:
                                    MediaQuery.of(context).size.width * 0.135,
                                height:
                                    MediaQuery.of(context).size.width * 0.135,
                              ),
                              Text(
                                'PACIENTE',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color.fromARGB(247, 5, 5, 5),
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.06),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFd2acd1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () async {
                          await launchUrl(_url);
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 4 / 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/forum.png',
                                width:
                                    MediaQuery.of(context).size.width * 0.135,
                                height:
                                    MediaQuery.of(context).size.width * 0.135,
                              ),
                              Text(
                                'FÓRUM',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color.fromARGB(247, 5, 5, 5),
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.06),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFd2acd1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () async {
                          await launchUrl(_url);
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 4 / 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/imgduvidas.png',
                                width:
                                    MediaQuery.of(context).size.width * 0.135,
                                height:
                                    MediaQuery.of(context).size.width * 0.135,
                              ),
                              Text(
                                'DICAS E DÚVIDAS',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color.fromARGB(247, 5, 5, 5),
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.07,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              /*Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'images/imgmenu.png',
                      fit: BoxFit.fill, // Adjust the fit based on your needs
                    ),
                  ),
                ],
              )*/
            ],
          ),
        )));
  }
}
