import 'package:aula_913/domain/pacote_futebol.dart';
import 'package:aula_913/bd/db_helper.dart';
import 'package:sqflite/sqflite.dart';

class PacoteDao {
  Future<void> salvarPacote(PacoteFutebol pacote) async {
    try {
      Database database = await DBHelper().initDB();
      await database.insert('PACOTE', pacote.toJson());
    } catch (e) {
      print('Erro ao salvar pacote: $e');
    }
  }

  Future<List<PacoteFutebol>> listarPacotes() async {
    Database database = await DBHelper().initDB();
    String sql = 'SELECT * FROM PACOTE;';
    var result = await database.rawQuery(sql);
    List<PacoteFutebol> lista = [];
    for (var json in result) {
      PacoteFutebol pacote = PacoteFutebol.fromJson(json);
      lista.add(pacote);
    }
    return lista;
  }
}
