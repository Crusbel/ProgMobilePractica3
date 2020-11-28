class AutoModel {
  String titulo;
  String contenido;
  String imagen;

  AutoModel({this.titulo, this.contenido, this.imagen});

  AutoModel.fromJson(Map<String, dynamic> json) {
    titulo = json['titulo'];
    contenido = json['contenido'];
    imagen = json['imagen'];
  }
}
