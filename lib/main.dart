import 'package:flutter/material.dart';
import './top.dart';
import './reason.dart';
import './duel.dart';
import './solve.dart';
import './complete.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Duel',
      theme: new ThemeData.dark(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new TopPage(),
        '/reason': (BuildContext context) => new ReasonPage(),
        '/duel': (BuildContext context) => new DuelPage(),
        '/solve': (BuildContext context) => null,
        '/complete': (BuildContext context) => new CompletePage(),
      }
    );
  }
}
