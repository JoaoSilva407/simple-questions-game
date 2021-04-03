import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String questao;
  final String conta;

  Questao(this.questao, this.conta);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            questao,
            style: TextStyle(
              fontFamily: 'ChalkPaint',
              fontSize: 55,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            conta,
            style: TextStyle(
              fontFamily: 'ChalkPaint',
              fontSize: 55,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
