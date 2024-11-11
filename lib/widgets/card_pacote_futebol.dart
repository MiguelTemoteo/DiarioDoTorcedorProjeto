import 'package:aula_913/domain/pacote_futebol.dart';
import 'package:flutter/material.dart';

class CardPacoteFutebol extends StatelessWidget {
  final PacoteFutebol pacoteFutebol;

  const CardPacoteFutebol({super.key, required this.pacoteFutebol});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, 
        children: [
          Container(
            width: 400, 
            height: 250, 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0), 
              child: Image.network(
                pacoteFutebol.urlImage,
                fit: BoxFit.cover, 
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                Text(
                  pacoteFutebol.titulo,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold, 
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  pacoteFutebol.descricao,
                  style: const TextStyle(
                    fontSize: 18, 
                    decoration: TextDecoration.underline, 
                  ),
                  textAlign: TextAlign.center, 
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
