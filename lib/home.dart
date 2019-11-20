import 'package:flutter/material.dart';
import 'package:test_automatizado_flutter/pages/configuracao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notas"),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Configuracao()
              ));
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),

    );
  }
}
