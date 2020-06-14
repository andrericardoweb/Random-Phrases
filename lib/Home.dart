import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _phrases = [
    "Os problemas são oportunidades para se mostrar o que sabe. (Duke Ellington)",
    "Nossos fracassos, às vezes, são mais frutíferos do que os êxitos. (Henry Ford)"
    "Tente de novo. Fracasse de novo. Mas fracasse melhor. (Samuel Beckett)"
    "É costume de um tolo, quando erra, queixar-se dos outros. É costume de um sábio queixar-se de si mesmo. (Sócrates)"
    "O verdadeiro heroísmo consiste em persistir por mais um momento, quando tudo parece perdido. (W. F. Grenfel)"
    "Cada cliente é como se fosse primeiro e único. (Norman Bawes)"
    "Mesmo que já tenhas feito uma longa caminhada, há sempre um novo caminho a fazer. (Santo Agostinho)"
  ];

  var _generatedPhrase = "Clique abaixo para gerar uma frase";

  void _generatePhrase() {
    var randomNumber = Random().nextInt(_phrases.length);
    setState(() {
      _generatedPhrase = _phrases[randomNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Frases do dia"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            //width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.png"),
                Text(
                  _generatedPhrase,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 17,
                      fontStyle: FontStyle.italic,
                      color: Colors.black),
                ),
                RaisedButton(
                  child: Text(
                    "Nova Frase",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  color: Colors.green,
                  onPressed: _generatePhrase,
                )
              ],
            ),
          ),
        )
      );
  }
}
