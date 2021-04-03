import 'package:flutter/material.dart';
import 'package:questions_game/questionario.dart';
import 'package:questions_game/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _pontuacaoTotal = 0;
  var _perguntaSelecionada = 0;

  final List<Map<String, Object>> _perguntas = const [
    {
      'questao': [
        {'texto': 'Exercício 1', 'conta': '(5 * 4) + 4'},
      ],
      'respostas': [
        {'texto': '20', 'valor': 0},
        {'texto': '28', 'valor': 0},
        {'texto': '24', 'valor': 10},
        {'texto': '16', 'valor': 0},
      ],
    },
    {
      'questao': [
        {'texto': 'Exercício 2', 'conta': '10 / (2 + 3)'},
      ],
      'respostas': [
        {'texto': '8', 'valor': 0},
        {'texto': '10', 'valor': 0},
        {'texto': '2', 'valor': 10},
        {'texto': '6', 'valor': 0},
      ],
    },
    {
      'questao': [
        {'texto': 'Exercício 3', 'conta': '30 + 20 - 90'},
      ],
      'respostas': [
        {'texto': '-30', 'valor': 0},
        {'texto': '-40', 'valor': 10},
        {'texto': '-20', 'valor': 0},
        {'texto': '-10', 'valor': 0},
      ],
    }
  ];

  void _responder(int valor) {
    setState(() {
      _perguntaSelecionada++;
      _pontuacaoTotal += valor;
    });
  }

  void _reiniciarApp() {
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[900],
          centerTitle: true,
          title: Text(
            'Perguntas de Matemática básica',
            style: TextStyle(
              fontSize: 28,
              color: Colors.yellow,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/lousa.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: temPerguntaSelecionada
              ? Questionario(
                  perguntas: _perguntas,
                  perguntaSelecionada: _perguntaSelecionada,
                  responder: _responder,
                )
              : Resultado(_pontuacaoTotal, _reiniciarApp),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
