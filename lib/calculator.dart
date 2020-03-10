import 'package:flutter/material.dart';
import 'package:projeto_teste/memory.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final memory = Memory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildDisplay(),
          Divider(
            height: 0.2,
          ),
          _buildKeyboard(),
        ],
      ),
    );
  }

  _buildDisplay() {
    return Expanded(
      child: Container(
        color: Colors.black,
        child: Text(
          memory.result,
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 80,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _buildKeyboardButton(String label,
      {int flex = 1, Color textColor = Colors.white}) {
    return Expanded(
      flex: flex,
      child: RaisedButton(
        color: Colors.black,
        textColor: textColor,
        child: Text(label, style: TextStyle(fontSize: 24)),
        onPressed: () {
          setState(() {
            memory.applyCommand(label);
          });
        },
      ),
    );
  }

  _buildKeyboard() {
    return Container(
      height: 400,
      color: Colors.black,
      child: Column(children: <Widget>[
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildKeyboardButton('AC', textColor: Colors.deepOrange),
            _buildKeyboardButton('DEL', textColor: Colors.deepOrange),
            _buildKeyboardButton('%', textColor: Colors.deepOrange),
            _buildKeyboardButton('/', textColor: Colors.deepOrange),
          ],
        )),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildKeyboardButton('9'),
            _buildKeyboardButton('8'),
            _buildKeyboardButton('7'),
            _buildKeyboardButton('X', textColor: Colors.deepOrange),
          ],
        )),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildKeyboardButton('6'),
            _buildKeyboardButton('5'),
            _buildKeyboardButton('4'),
            _buildKeyboardButton('+', textColor: Colors.deepOrange),
          ],
        )),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildKeyboardButton('3'),
            _buildKeyboardButton('2'),
            _buildKeyboardButton('1'),
            _buildKeyboardButton('-', textColor: Colors.deepOrange),
          ],
        )),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _buildKeyboardButton('0', flex: 2),
            _buildKeyboardButton('.'),
            _buildKeyboardButton('=', textColor: Colors.deepOrange),
          ],
        )),
      ]),
    );
  }
}
