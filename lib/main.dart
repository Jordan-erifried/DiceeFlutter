import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Dicee App'),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}



class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
    @override
    Widget build(BuildContext context) {
      //leftDiceNumber = 2;
      return Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftDiceNumber = 6;
                    print('DiceNumber = $leftDiceNumber');
                  });
                },
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),

            Expanded(
              child: FlatButton(
                onPressed: () {
                  print('iamiboyy');
                },
                child: Image.asset('images/dice1.png'),
              ),
            )
          ],
        ),
      );
  }
}

