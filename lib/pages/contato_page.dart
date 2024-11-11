import 'package:flutter/material.dart';
import 'package:aula_913/domain/contato.dart';
import 'package:aula_913/bd/database.dart';

class ContatoPage extends StatefulWidget {
  @override
  _ContatoPageState createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ContatoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contatos'),
      ),
      body: ListView.builder(
        itemCount: Database.contatos.length,
        itemBuilder: (context, index) {
          final contato = Database.contatos[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.network(
                contato.logoUrl,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              title: Text(contato.title),
              subtitle: Text(contato.description),
            ),
          );
        },
      ),
    );
  }
}
