import 'package:flutter/material.dart';
import 'package:practica3/auto.dart';
import 'package:practica3/models/AutoModel.dart';

class AutosPage extends StatefulWidget {
  AutosPage({Key key}) : super(key: key);

  @override
  _AutosPageState createState() => _AutosPageState();
}

class _AutosPageState extends State<AutosPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AutoModel nuevoauto = new AutoModel(
      imagen:
          "https://upload.wikimedia.org/wikipedia/commons/6/65/1968_Camaro_RS_327.jpg",
      titulo: "Pontiac 1970",
      contenido:
          "Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas, las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.");
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practica"),
      ),
      key: _scaffoldKey,
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(10, (index) {
          return miCardImageCarga(context, nuevoauto);
        }),
      ),
    );
  }
}

Card miCardImageCarga(BuildContext context, AutoModel auto) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    margin: EdgeInsets.all(15),
    elevation: 10,
    color: Colors.blue,
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: <Widget>[
        Image.network(auto.imagen),
        GestureDetector(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Expanded(
                    child: Text(
                  auto.titulo,
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ],
          ),
          onTap: () {
            Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => new AutoPage(
                        item_Auto: auto,
                      )),
            );
          },
        )
      ],
    ),
  );
}
