import 'package:calculadora_simples/Calculadora.dart';
import 'package:calculadora_simples/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraSimples());
}

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  // Métodos de cálculos

  // Método build (que constrói a estrutura no app)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: new Text("Calculadora - simples")),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  // child: new Text("+"),
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: somar,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  // child: new Text("-"),
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: subtrair,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  // child: new Text("x"),
                  child: new Text(
                    "x",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.redAccent,
                  onPressed: multiplicar,
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  // child: new Text("÷"),
                  child: new Text(
                    "÷",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.red,
                  onPressed: dividir,
                )
              ],
            ),
          ],
        ),
      ),
    );
  } // fecha o método build

  var valor1;
  var valor2;
  var resultado;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 + valor2;
    });
  }

  void subtrair() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 - valor2;
    });
  }

  void multiplicar() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 * valor2;
    });
  }

  void dividir() {
    setState(() {
      valor1 = num.parse(campoValor1.text);
      valor2 = num.parse(campoValor2.text);
      resultado = valor1 / valor2;
    });
  }
} // fecha classe
