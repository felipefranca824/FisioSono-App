import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/Pages/TelaDica.dart';
import 'package:myapp/Pages/TelaQuiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'FisioSono App';

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
        title: Text('FisioSono App'),
        centerTitle: true,
      ),
      body: Column(
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
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
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
                'Obter Dicas',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TelaDica()));
              },
            ),
            ListTile(
              title: Text(
                'Aprenda Mais',
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}









