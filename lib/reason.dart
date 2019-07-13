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
  final _reason = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _reason,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                margin: EdgeInsets.only(bottom: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Reason',
                      ),
                      validator: (value) {
                        if (value.isEmpty)
                          return 'Reason is empty!';
                        else
                          return null;
                      },
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
                      color: Colors.white,
                      child: Text(
                        'Top',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        if (_reason.currentState.validate())
                          Navigator.of(context).pushNamed('/duel');
                      },
                      color: Colors.red,
                      child: Text(
                          'Buttle',
                          style: TextStyle(
                            fontSize: 30.0,
                          )
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
