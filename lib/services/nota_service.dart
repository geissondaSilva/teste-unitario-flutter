import 'package:test_automatizado_flutter/models/nota.dart';
import 'package:test_automatizado_flutter/models/configuracao.dart';

class NotaService {
  NotaService.instance();

  static final NotaService _instance = NotaService.instance();

  factory NotaService() => _instance;

  double calcularNota1(Nota nota, Configuracao config){
    double prova = nota.provaN1 * config.percN1;
    double trabalho = nota.trabalhoN1 * config.percT1;
    return prova + trabalho;
  }

  double calcularNota2(Nota nota, Configuracao config){
    double prova = nota.provaN2 * config.percN2;
    double trabalho = nota.trabalhoN2 * config.percT2;
    return prova + trabalho;
  }

  double calcularMedia(Nota nota, Configuracao config){
    double nota1 = calcularNota1(nota, config);
    double nota2 = calcularNota2(nota, config);
    return (nota1 + nota2) / 2;
  }
}