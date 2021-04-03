import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciarApp;

  Resultado(this.pontuacao, this.reiniciarApp);

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'Insuficiente';
    } else if (pontuacao < 20) {
      return 'Regular';
    } else if (pontuacao < 30) {
      return 'Bom';
    } else {
      return 'Muito bom';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontFamily: 'ChalkPaint',
              fontSize: 80,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: reiniciarApp,
          child: Text('Reiniciar?',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              )),
        )
      ],
    );
  }
}
