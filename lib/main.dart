import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: DiceePage(),
      ),
    ));


class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);

  @override
  State<DiceePage> createState() => _DiceePageState();
}

class _DiceePageState extends State<DiceePage> {
   int leftDiceNumber = 1;
   int rightDiceNumber = 1;
  void stateDice(){
    setState((){
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(onPressed: () {
              stateDice();
            },
                child: Image.asset("images/dice$leftDiceNumber.png")),
          ),
          Expanded(
            child: TextButton(onPressed: () {
              stateDice();
            },
                child: Image.asset("images/dice$rightDiceNumber.png")),
          ),
        ],
      ),
    );
  }
}


