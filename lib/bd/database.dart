import 'package:aula_913/domain/pacote_futebol.dart';
import 'package:aula_913/domain/contato.dart';

class Database {
  
  static List<PacoteFutebol> pacotes = [
    PacoteFutebol(
      urlImage: 'https://a.espncdn.com/combiner/i?img=%2Fphoto%2F2023%2F0725%2Fr1202072_1280x720_16%2D9.jpg&w=920&h=518&scale=crop&cquality=80&location=origin&format=jpg',
      titulo: 'Jogos Olímpicos de Paris',
      descricao: 'Fique por dentro dos detalhes dos Jogos Olímpicos de Paris.',
      detalhesExtras: 'Acreditamos que temos o time para fazer história mais uma vez," disse o técnico da Seleção Brasileira ao jornal Patotinha. Com jovens promessas e veteranos experientes, o Brasil chega a Paris 2024 determinado a conquistar mais um ouro olímpico. "Estamos prontos. A energia e a vontade de vencer são imensas," afirmou o capitão da equipe. Com o apoio da apaixonada torcida brasileira, a Seleção espera transformar os estádios franceses em caldeirões verde e amarelo, impulsionando o time rumo ao pódio mais alto.',
    ),
    PacoteFutebol(
      urlImage: 'https://midias.agazeta.com.br/2022/12/28/mercado-da-bola-938935-article.jpeg',
      titulo: 'Mercado da Bola',
      descricao: 'Últimas transferências e movimentações no mercado futebolístico.',
      detalhesExtras: 'Última hora!!! O mundo do futebol foi surpreendido com a notícia bombástica de que Gabigol, o icônico atacante conhecido por sua habilidade e faro de gol, fechou um contrato com o Palmeiras! Após intensas negociações e rumores nos bastidores, a confirmação pegou a todos de surpresa, especialmente os torcedores rivais. Gabigol, que se destacou em sua passagem pelo Flamengo, agora se junta ao Verdão em busca de novos desafios e títulos. Com sua capacidade de decidir jogos e sua garra em campo, o atleta promete ser uma peça chave na busca do Palmeiras pela glória no Campeonato Brasileiro e na Libertadores. A expectativa é alta, e os fãs mal podem esperar para ver o novo reforço em ação no Allianz Parque!',
    ),
    PacoteFutebol(
      urlImage: 'https://st3.depositphotos.com/1203063/19010/i/450/depositphotos_190100236-stock-photo-red-siren-isolated-white-background.jpg',
      titulo: 'Notícias do Futebol',
      descricao: 'Notícias e eventos mais importantes no mundo do futebol.',
      detalhesExtras: 'O grupo BigLanche, famoso pela sua inovação na gastronomia, surpreendeu a todos ao anunciar a compra do ASA de Arapiraca, um dos clubes mais tradicionais do futebol alagoano. Com essa aquisição, o BigLanche promete investir na infraestrutura do Estádio Coaracy da Mata Fonseca e na formação de novos talentos, buscando levar o ASA a um novo patamar no futebol nacional. A torcida já está animada com as possíveis mudanças e reforços, ansiosa para ver o clube ressurgir no cenário do futebol alagoano e brasileiro!',
    ),
    PacoteFutebol(
      urlImage: 'https://i0.wp.com/blogdopaulinho.com.br/wp-content/uploads/2023/10/corinthians-e-palmeiras-e1696412565763.jpg?fit=478%2C413&ssl=1',
      titulo: 'Próximos Jogos',
      descricao: 'Calendário dos próximos jogos dos times mais importantes.',
      detalhesExtras: 'No Allianz Parque, o Palmeiras enfrenta o Juventude, buscando consolidar sua liderança. No Maracanã, o Flamengo se prepara para um duelo emocionante contra o Grêmio, com ambos os times em boa fase. Em São Januário, o Vasco da Gama recebe o Atlético Mineiro, enquanto o Cuiabá tenta surpreender o São Paulo na Arena Pantanal. Por fim, no Estádio Beira-Rio, o Internacional enfrenta o Corinthians em um clássico que promete muitas emoções. Fique ligado nos horários e não perca esses grandes confrontos!',
    ),
  ];
  static List<Contato> contatos = [
    Contato(
      title: 'E-mail',
      description: 'suportediariodotorcedor@gmail.com',
      logoUrl: 'https://cdn-icons-png.flaticon.com/512/281/281769.png',
    ),
    Contato(
      title: 'Instagram',
      description: '@diario_torcedor_oficial',
      logoUrl: 'https://static.vecteezy.com/system/resources/previews/018/930/415/non_2x/instagram-logo-instagram-icon-transparent-free-png.png',
    ),
    Contato(
      title: 'Facebook',
      description: 'Página em breve',
      logoUrl: 'https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg',
    ),
    Contato(
      title: 'X (Twitter)',
      description: '@diario_torcedor',
      logoUrl: 'https://seeklogo.com/images/T/twitter-logo-A84FE9258E-seeklogo.com.png',
    ),
    Contato(
      title: 'WhatsApp',
      description: '(11) 98765-4321',
      logoUrl: 'https://i.pinimg.com/originals/79/dc/31/79dc31280371b8ffbe56ec656418e122.png',
    ),
  ];

}
