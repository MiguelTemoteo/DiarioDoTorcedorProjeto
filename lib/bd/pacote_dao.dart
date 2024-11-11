import 'package:aula_913/bd/db_helper.dart';
import 'package:aula_913/domain/pacote_futebol.dart';
import 'package:sqflite/sqflite.dart';

class PacoteDao {
  listarPacotes() async {
    Database database = await DBHelper().initDB();

    String sql = 'SELECT * FROM PACOTEFUTEBOL;';
    var result = await database.rawQuery(sql);

    List<PacoteFutebol> lista = [];
    for (var json in result) {
      PacoteFutebol pacote = PacoteFutebol.fromJson(json);
      lista.add(pacote);
    }

    return lista;
  }
}