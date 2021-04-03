import 'package:flutter/material.dart';
import 'package:questions_game/questao.dart';
import 'package:questions_game/resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.responder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;

    List<Map<String, Object>> questoes = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['questao']
        : null;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ...questoes.map((perg) {
          return Questao(
            perg['texto'],
            perg['conta'],
          );
        }).toList(),
        ...respostas.map((resp) {
          return Resposta(
            resp['texto'],
            () => responder(
              resp['valor'],
            ),
          );
        }).toList(),
      ],
    );
  }
}
