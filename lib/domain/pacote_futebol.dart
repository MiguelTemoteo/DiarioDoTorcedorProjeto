class PacoteFutebol {
  late int id;
  late String urlImage;
  late String titulo;
  late String descricao;
  late String detalhesExtras;

  PacoteFutebol({
    required this.titulo,
    required this.urlImage,
    required this.descricao,
    required this.detalhesExtras, 
  });

  PacoteFutebol.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    titulo = json['titulo'];
    urlImage = json['urlimage'];
    descricao = json['descricao'];
    detalhesExtras = json['detalhesextras'];


  }

}
