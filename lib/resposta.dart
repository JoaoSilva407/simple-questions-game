import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: onSelecao,
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.yellow,
            fontFamily: 'ChalkPaint',
            fontSize: 55,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
