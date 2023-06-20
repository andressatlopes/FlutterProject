import 'package:flutter/material.dart';
import 'forum.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse(
    'https://parte-html-cancer-de-mama.tallesgabriel1.repl.co/cancerdemama.html');
final Uri _url2 = Uri.parse(
    'https://parte-html-cancer-de-mama.tallesgabriel1.repl.co/DicaseDuvidas.html');

void main() {
  runApp(const Menu());
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 210, 245),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              'MENU INICIAL',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 148, 51, 98),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 60,
            ),
            ListView(
              shrinkWrap: true,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width * 0.02),
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
                        width: MediaQuery.of(context).size.width * 4 / 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/imgcancer.png',
                              width: MediaQuery.of(context).size.width * 0.135,
                              height: MediaQuery.of(context).size.width * 0.135,
                            ),
                            const Text(
                              'CANCÊR DE MAMA',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(247, 5, 5, 5),
                                fontSize: 17,
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
                        vertical: MediaQuery.of(context).size.width * 0.02),
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
                        width: MediaQuery.of(context).size.width * 4 / 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/imgpaciente.png',
                              width: MediaQuery.of(context).size.width * 0.135,
                              height: MediaQuery.of(context).size.width * 0.135,
                            ),
                            const Text(
                              'PACIENTE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(247, 5, 5, 5),
                                fontSize: 17,
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
                        vertical: MediaQuery.of(context).size.width * 0.02),
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
                        width: MediaQuery.of(context).size.width * 4 / 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/forum.png',
                              width: MediaQuery.of(context).size.width * 0.135,
                              height: MediaQuery.of(context).size.width * 0.135,
                            ),
                            const Text(
                              'FÓRUM',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(247, 5, 5, 5),
                                fontSize: 17,
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
                        vertical: MediaQuery.of(context).size.width * 0.02),
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
                        width: MediaQuery.of(context).size.width * 4 / 7,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/imgdicas.png',
                              width: MediaQuery.of(context).size.width * 0.135,
                              height: MediaQuery.of(context).size.width * 0.135,
                            ),
                            const Text(
                              'DICAS E DÚVIDAS',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color.fromARGB(247, 5, 5, 5),
                                fontSize: 17,
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
        ));
  }
}
