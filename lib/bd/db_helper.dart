import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String dbPath = join(path, 'pacote.db');
    Database db = await openDatabase(
      dbPath,
      version: 1,
      onCreate: onCreate,
    );

    return db;
  }

  FutureOr<void> onCreate(Database db, int version) async {
    String sql =
        'CREATE TABLE PACOTEFUTEBOL (id INTEGER PRIMARY KEY, titulo varchar(1000), urlImage varchar(1000), descricao varchar(100000), detalhesExtras varchar(10000);';
    await db.execute(sql);

    sql =
    "INSERT INTO PACOTE (id, titulo, urlimage, descricao, detalhesExtras) VALUES (1, 'Jogos Olímpicos de Paris', 'https://a.espncdn.com/combiner/i?img=%2Fphoto%2F2023%2F0725%2Fr1202072_1280x720_16%2D9.jpg&w=920&h=518&scale=crop&cquality=80&location=origin&format=jpg', 'Fique por dentro dos detalhes dos Jogos Olímpicos de Paris.', 'Acreditamos que temos o time para fazer história mais uma vez, disse o técnico da Seleção Brasileira ao jornal Patotinha. Com jovens promessas e veteranos experientes, o Brasil chega a Paris 2024 determinado a conquistar mais um ouro olímpico. Estamos prontos. A energia e a vontade de vencer são imensas, afirmou o capitão da equipe. Com o apoio da apaixonada torcida brasileira, a Seleção espera transformar os estádios franceses em caldeirões verde e amarelo, impulsionando o time rumo ao pódio mais alto.');";
    await db.execute(sql);

    sql =
    "INSERT INTO PACOTE (id, titulo, urlimage, descricao, detalhesExtras) VALUES (2, 'Mercado da Bola', 'https://midias.agazeta.com.br/2022/12/28/mercado-da-bola-938935-article.jpeg', 'Últimas transferências e movimentações no mercado futebolístico.', 'Última hora!!! O mundo do futebol foi surpreendido com a notícia bombástica de que Gabigol, o icônico atacante conhecido por sua habilidade e faro de gol, fechou um contrato com o Palmeiras! Após intensas negociações e rumores nos bastidores, a confirmação pegou a todos de surpresa, especialmente os torcedores rivais. Gabigol, que se destacou em sua passagem pelo Flamengo, agora se junta ao Verdão em busca de novos desafios e títulos. Com sua capacidade de decidir jogos e sua garra em campo, o atleta promete ser uma peça chave na busca do Palmeiras pela glória no Campeonato Brasileiro e na Libertadores. A expectativa é alta, e os fãs mal podem esperar para ver o novo reforço em ação no Allianz Parque!');";
    await db.execute(sql);

    sql =
    "INSERT INTO PACOTE (id, titulo, urlimage, descricao, detalhesExtras) VALUES (3, 'Notícias do Futebol', 'https://st3.depositphotos.com/1203063/19010/i/450/depositphotos_190100236-stock-photo-red-siren-isolated-white-background.jpg', 'Notícias e eventos mais importantes no mundo do futebol.', 'O grupo BigLanche, famoso pela sua inovação na gastronomia, surpreendeu a todos ao anunciar a compra do ASA de Arapiraca, um dos clubes mais tradicionais do futebol alagoano. Com essa aquisição, o BigLanche promete investir na infraestrutura do Estádio Coaracy da Mata Fonseca e na formação de novos talentos, buscando levar o ASA a um novo patamar no futebol nacional. A torcida já está animada com as possíveis mudanças e reforços, ansiosa para ver o clube ressurgir no cenário do futebol alagoano e brasileiro!');";
    await db.execute(sql);

    sql =
    "INSERT INTO PACOTE (id, titulo, urlimage, descricao, detalhesExtras) VALUES (4, 'Próximos Jogos ', 'https://i0.wp.com/blogdopaulinho.com.br/wp-content/uploads/2023/10/corinthians-e-palmeiras-e1696412565763.jpg?fit=478%2C413&ssl=1', 'Calendário dos próximos jogos dos times mais importantes.', 'No Allianz Parque, o Palmeiras enfrenta o Juventude, buscando consolidar sua liderança. No Maracanã, o Flamengo se prepara para um duelo emocionante contra o Grêmio, com ambos os times em boa fase. Em São Januário, o Vasco da Gama recebe o Atlético Mineiro, enquanto o Cuiabá tenta surpreender o São Paulo na Arena Pantanal. Por fim, no Estádio Beira-Rio, o Internacional enfrenta o Corinthians em um clássico que promete muitas emoções. Fique ligado nos horários e não perca esses grandes confrontos!');";
    await db.execute(sql);
  }
}