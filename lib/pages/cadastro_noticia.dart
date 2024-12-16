import 'package:aula_913/domain/pacote_futebol.dart';
import 'package:aula_913/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:aula_913/bd/pacote_dao.dart';

class CadastroNoticia extends StatefulWidget {
  const CadastroNoticia({super.key});

  @override
  State<CadastroNoticia> createState() => _CadastroNoticiaState();
}

class _CadastroNoticiaState extends State<CadastroNoticia> {
  final key = GlobalKey<FormState>();
  final TextEditingController _urlImageController = TextEditingController();
  final TextEditingController _tituloController = TextEditingController();
  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _detalhesExtrasController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro das notícias'),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: key,
          child: ListView(
            children: [
              const SizedBox(height: 16),
              TextFormField(
                controller: _urlImageController,
                decoration: const InputDecoration(
                  labelText: 'Link da foto',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o link da foto';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _tituloController,
                decoration: const InputDecoration(
                  labelText: 'Título matéria',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira o título por favor';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descricaoController,
                decoration: const InputDecoration(
                  labelText: 'Descrição da matéria',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira a descrição';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _detalhesExtrasController,
                decoration: const InputDecoration(
                  labelText: 'Detalhes Extras da matéria',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Insira os detalhes da matéria';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: cadastrar,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[700],
                ),
                child: const Text(
                  'Cadastrar',
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void cadastrar() {
    if (key.currentState!.validate()) {
      final pacote = PacoteFutebol(
        urlImage: _urlImageController.text,
        titulo: _tituloController.text,
        descricao: _descricaoController.text,
        detalhesExtras: _detalhesExtrasController.text,
      );
      PacoteDao().salvarPacote(pacote);
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
      key.currentState!.reset();
    }
  }
}
