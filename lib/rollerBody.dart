import 'dart:math';
import 'package:flutter/material.dart';

class rollerBody extends StatefulWidget {
  @override
  _rollerBodyState createState() => _rollerBodyState();
}

class _rollerBodyState extends State<rollerBody> {
  List<AssetImage> dice = [
    AssetImage("images/one.png"),
    AssetImage("images/two.png"),
    AssetImage("images/three.png"),
    AssetImage("images/four.png"),
    AssetImage("images/five.png"),
    AssetImage("images/six.png"),
  ];

  AssetImage diceImage1, diceImage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      this.diceImage1 = dice[0];
      this.diceImage2 = dice[0];
    });
  }

  void rollDice() {
    int random1 = Random().nextInt(6);
    int random2 = Random().nextInt(6);
    setState(() {
      this.diceImage1 = dice[random1];
      this.diceImage2 = dice[random2];
      print("${random1} & ${random2}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 100, bottom: 100),
                  child: Image(
                    image: diceImage1,
                    width: 150,
                    height: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100, bottom: 100),
                  child: Image(
                    image: diceImage2,
                    width: 150,
                    height: 150,
                  ),
                ),
              ],
            ),
            RaisedButton(
              color: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Text(
                "Roll Dice",
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              onPressed: () {
                rollDice();
              },
            )
          ],
        ),
      ),
    );
  }
}
