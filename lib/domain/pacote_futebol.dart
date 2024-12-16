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
    Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};

    json['id'] = id;
    json['titulo'] = titulo;
    json['urlImage'] = urlImage;
    json['descricao'] = descricao;
    json['detalhesExtras'] = detalhesExtras;

    return json;
  }

}
