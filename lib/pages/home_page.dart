import 'package:flutter/material.dart';
import 'package:aula_913/bd/pacote_dao.dart';
import 'package:aula_913/domain/pacote_futebol.dart';
import 'package:aula_913/pages/cadastro_noticia.dart';
import 'package:aula_913/pages/card_pacote_futebol.dart';
import 'package:aula_913/pages/detail_page.dart';
import 'package:aula_913/pages/contato_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PacoteFutebol> pacotes = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    pacotes = await PacoteDao().listarPacotes();
    setState(() {});
  }

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
          _buildIconButton(
            imageUrl: 'https://cdn-icons-png.freepik.com/256/1077/1077114.png',
            onTap: () {},
          ),
          _buildIconButton(
            imageUrl: 'https://cdn-icons-png.flaticon.com/512/84/84579.png',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContatoPage()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            pacotes.isEmpty
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: pacotes.length,
                    itemBuilder: (context, index) {
                      final pacote = pacotes[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailPage(pacoteFutebol: pacote),
                            ),
                          );
                        },
                        child: CardPacoteFutebol(
                          pacoteFutebol: pacote,
                        ),
                      );
                    },
                  ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: cadastroNoticia,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[700],
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text(
                'Cadastrar uma nova notícia',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void cadastroNoticia() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => CadastroNoticia()),
    );
  }

  Widget _buildIconButton({
    required String imageUrl,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: GestureDetector(
        onTap: onTap,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          height: 40,
        ),
      ),
    );
  }
}
