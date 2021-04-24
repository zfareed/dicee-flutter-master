import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 3;


  @override
  Widget build(BuildContext context) {

    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: 100.0,
              height: 100.0,
              child: InkWell(
                  onTap: () {
                    setState(() {
                        leftDiceNumber = Random().nextInt(6)+1;
                    });
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
    ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: 100.0,
              height: 100.0,
              child: InkWell(
                onTap: (){
                  setState(() {
                    rightDiceNumber = Random().nextInt(6)+1;
                  });
                },
                  child: Image.asset('images/dice$rightDiceNumber.png')),
            )
          ],
        ),
      ),
    );
  }
}



