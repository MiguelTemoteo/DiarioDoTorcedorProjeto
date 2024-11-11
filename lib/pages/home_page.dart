import 'package:aula_913/bd/database.dart';
import 'package:aula_913/domain/pacote_futebol.dart';
import 'package:aula_913/widgets/card_pacote_futebol.dart';
import 'package:flutter/material.dart';
import 'package:aula_913/pages/detail_page.dart';
import 'package:aula_913/pages/contato_page.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Diário do Torcedor',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green[900],
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.network(
              'https://cdn-icons-png.freepik.com/256/1077/1077114.png',
              fit: BoxFit.cover,
              height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContatoPage(), 
                  ),
                );
              },
              child: Image.network(
                'https://cdn-icons-png.flaticon.com/512/84/84579.png',
                fit: BoxFit.cover,
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: Database.pacotes.map((pacote) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(pacoteFutebol: pacote),
                  ),
                );
              },
              child: CardPacoteFutebol(
                pacoteFutebol: pacote,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
