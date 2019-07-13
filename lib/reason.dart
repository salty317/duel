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
      home: ReasonPage(),
    );
  }
}

class ReasonPage extends StatefulWidget {
  ReasonPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<ReasonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              margin: EdgeInsets.only(bottom: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '喧嘩の原因',
                    style: TextStyle(fontSize: 50.0),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    color: Colors.grey,
                    padding: EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
                    child: Text('トップへ戻る'),
                  ),
                  RaisedButton(
                    onPressed: () => Navigator.of(context).pushNamed('/duel'),
                    color: Colors.red,
                    padding: EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
                    child: Text('バトる'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
