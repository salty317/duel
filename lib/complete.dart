import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duel',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CompletePage(),
    );
  }
}

class CompletePage extends StatefulWidget {
  CompletePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<CompletePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '和解成立！',
              style: TextStyle(fontSize: 50.0),
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).pushNamed('/'),
              child: Text('トップに戻る'),
            )
          ],
        ),
      ),
    );
  }
}
