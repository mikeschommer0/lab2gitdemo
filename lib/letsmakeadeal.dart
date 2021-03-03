/// Mike Schommer CS 344
/// Lab 2
/// 

import 'package:flutter/material.dart';
import 'dart:math';

class LetsMakeADeal extends StatefulWidget {
  @override
  _LetsMakeADealState createState() => _LetsMakeADealState();
}

class _LetsMakeADealState extends State<LetsMakeADeal> {
  bool revealPrizes = false;
  List winningDoor = ['Goat', 'Goat', 'Goat'];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Let\'s Make A Deal',
            style: TextStyle(color: Colors.orange, fontSize: 24.0)),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: ElevatedButton(
                    onPressed: _winningDoor,
                    style: ElevatedButton.styleFrom(
                        primary: Colors.redAccent[400]),
                    child: revealPrizes
                        ? Text('${winningDoor[0]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0))
                        : Text('Door #1',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0))),
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(
                child: ElevatedButton(
                    onPressed: _winningDoor,
                    style: ElevatedButton.styleFrom(primary: Colors.orange),
                    child: revealPrizes
                        ? Text('${winningDoor[1]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0))
                        : Text('Door #2',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0))),
                width: 100.0,
                height: 100.0,
              ),
              SizedBox(
                child: ElevatedButton(
                    onPressed: _winningDoor,
                    style: ElevatedButton.styleFrom(
                        primary: Colors.greenAccent[400]),
                    child: revealPrizes
                        ? Text('${winningDoor[2]}',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0))
                        : Text('Door #3',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20.0))),
                width: 100.0,
                height: 100.0,
              ),
            ],
          ),
        ),
        ElevatedButton(
            onPressed: _resetGame,
            style: ElevatedButton.styleFrom(primary: Colors.grey[350]),
            child: Text(
              'Reset The Prize',
              style: TextStyle(color: Colors.black),
            ))
      ],
    );
  }

  void _resetGame() {
    setState(() {
      revealPrizes = false;
      winningDoor = ['Goat', 'Goat', 'Goat'];
    });
  }

  void _winningDoor() {
    setState(() {
      revealPrizes = true;
      var winningIndex = Random().nextInt(winningDoor.length);
      winningDoor.insert(winningIndex, 'Prize!');
    });
  }
}
