import 'package:calculadora_simples/Calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraSimples());
}

class CalculadoraSimples extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora Simples",
      theme: new ThemeData(primarySwatch: Colors.red),
      home: new Calculadora(),
    );
  }
}
