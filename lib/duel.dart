import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DuelPage(),
    );
  }
}

class DuelPage extends StatefulWidget {
  DuelPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<DuelPage> {
  @override
  int count = 0;
  void initState() {
    count = 0;
  }

  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Align(
        alignment: Alignment.topCenter,
        child: Text('2:00'),
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Transform.rotate(
              angle: pi / 2, child: count == 0 ? _showBtn() : null)),
      Center(
        child: GestureDetector(
            onTap: () {
              showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return new AlertDialog(
        content: const Text('ここにカードを表示'),
        actions: <Widget>[
          new FlatButton(
            child: const Text('閉じる'),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        ],
      );
    },
  );
            },
            child: Container(
              height: 120,
              width: 120,
              color: Colors.white,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '山札',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            )),
      ),
      Align(
          alignment: Alignment.centerRight,
          child: Transform.rotate(
              angle: pi / -2, child: count == 1 ? _showBtn() : null)),
      Align(
        alignment: Alignment.bottomCenter,
        child: Text('山札を引いて下さい'),
      ),
    ]));
  }

  Widget _showBtn() {
    return RaisedButton(
      onPressed: () {
        if (this.count < 1) {
          this._incrementCounter();
        } else {
          this._incrementCounter();
          this.initState();
          Navigator.of(context).pushNamed('/');
        }
      },
      child: Text('話し終える'),
    );
  }
}
