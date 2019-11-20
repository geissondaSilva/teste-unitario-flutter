import 'package:flutter/material.dart';

class Configuracao extends StatefulWidget {
  @override
  _ConfiguracaoState createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController _pesoNota1Controller = new TextEditingController();
  TextEditingController _pesoTrabalho1Controller = new TextEditingController();

  TextEditingController _pesoNota2Controller = new TextEditingController();
  TextEditingController _pesoTrabalho2Controller = new TextEditingController();
  TextEditingController _interdisciplinarController = new TextEditingController();

  validarN1(){
    double prova = double.parse(_pesoNota1Controller.text);
    double trabalho = double.parse(_pesoTrabalho1Controller.text);

  }

  calcularPeso(){}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Configuração"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text("Fórmula da N1", style: TextStyle(
                  fontSize: 18.0
                )),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    controller: _pesoNota1Controller,
                    decoration: InputDecoration(
                      labelText: "Peso da Prova",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFormField(
                  controller: _pesoTrabalho1Controller,
                  decoration: InputDecoration(
                    labelText: "Peso do trabalho",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Divider(height: 2.0, color: Colors.black54),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: Text("Fórmula da N2", style: TextStyle(
                    fontSize: 18.0
                )),
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 16.0),
                  child: TextFormField(
                    controller: _pesoNota2Controller,
                    decoration: InputDecoration(
                      labelText: "Peso da Prova",
                      border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(8.0),
                        borderSide: new BorderSide(),
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFormField(
                  controller: _pesoTrabalho2Controller,
                  decoration: InputDecoration(
                    labelText: "Peso do trabalho",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16.0),
                child: TextFormField(
                  controller: _interdisciplinarController,
                  decoration: InputDecoration(
                    labelText: "Peso da prova interdisciplinar",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(8.0),
                      borderSide: new BorderSide(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
