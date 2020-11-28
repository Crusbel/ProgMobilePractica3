import 'package:flutter/material.dart';
import 'package:practica3/models/AutoModel.dart';

class AutoPage extends StatefulWidget {
  AutoPage({Key key, @required this.item_Auto}) : super(key: key);

  final AutoModel item_Auto;
  @override
  _AutoPageState createState() => _AutoPageState();
}

class _AutoPageState extends State<AutoPage> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Practica"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              color: Colors.blue,
              child: Column(
                children: [
                  Image.network(widget.item_Auto.imagen),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 15.0, bottom: 5.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Wrap(
                        children: [
                          Text(
                            widget.item_Auto.titulo,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, bottom: 20.0),
                    child: Text(
                      widget.item_Auto.contenido,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
