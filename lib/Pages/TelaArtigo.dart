import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class TelaArtigo extends StatefulWidget {
  @override
  _TelaArtigoState createState() => _TelaArtigoState();
}

class _TelaArtigoState extends State<TelaArtigo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Aprenda mais',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      body: MaterialApp(
        routes: {
          "/": (_) => new WebviewScaffold(
                url: "https://www.google.com",
                appBar: new AppBar(
                  title: new Text("Widget webview"),
                ),
              ),
        },
      ),
    );
  }
}
