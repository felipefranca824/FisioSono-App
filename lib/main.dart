import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/TelaArtigo.dart';
import 'package:myapp/Pages/TelaDica.dart';
import 'package:myapp/Pages/TelaQuiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'FisioSono';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FisioSono'),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'images/logo.jpeg',
                height: 300,
                width: 300,
              ),
            ),
            Center(
                child: Container(
                    child: Padding(
                        padding: EdgeInsets.all(25),
                        child: Text(
                          'Aprenda sobre a fisiologia do sono se divertindo! ',
                          style:
                              TextStyle(fontSize: 25, color: Colors.blueAccent),
                          textAlign: TextAlign.center,
                        )))),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Seja bem-vindo!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                'Quiz',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaQuiz()));
              },
            ),
            ListTile(
              title: Text(
                'Obter dicas',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaDica()));
              },
            ),
            ListTile(
              title: Text(
                'Aprenda mais',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaArtigo()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
