import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:url_launcher/url_launcher.dart';

List<String> articles = [
  'Fases do Sono',
  'Melatonina, ritmos biológicos e sono - uma revisão da literatura',
  'Quais são as fases do sono? O que acontece em cada uma?',
  'Sono e ritmo biológico'
];
List<String> links = [
  'https://brasilescola.uol.com.br/curiosidades/fases-sono.htm',
  'http://files.bvs.br/upload/S/0101-8469/2008/v44n1/a5-11.pdf',
  'http://www.mamaegansa.com.br/blog/quais-sao-fases-sono-o-que-acontece-em-cada-uma/',
  'https://lifestyle.sapo.pt/saude/saude-e-medicina/artigos/sono-e-ritmo-biologico'
];

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
      body: Container(
        margin: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 0),
        child: Column(
          children: <Widget>[
            _buildCard(articles[0], links[0]),
            //_buildCard(articles[1], links[1]), PDF bugado
            _buildCard(articles[2], links[2]),
            _buildCard(articles[3], links[3]),
          ],
        ),
      ),
    );
  }
}

Widget _buildCard(String titleArticle, String linkArticle) {
  return Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        ListTile(
          title: Text(titleArticle, style: TextStyle(fontSize: 20.0),),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              InkWell(
                child: Text(
                  'Acessar',
                  style: TextStyle(fontSize: 18.0, color: Colors.blue[200]),
                ),
                onTap: () => launch(linkArticle),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

/*
          Linkify(
            onOpen: (link) => print("Clicked ${link.url}!"),
            text: "Made by https://cretezy.com",
          ),

*/

// body: MaterialApp(
//   routes: {
//     "/": (_) => new WebviewScaffold(
//           url:
//               "https://lifestyle.sapo.pt/saude/saude-e-medicina/artigos/sono-e-ritmo-biologico",
//           appBar: new AppBar(
//             title: new Text("Widget webview"),
//           ),
//         ),
//   },
// ),
