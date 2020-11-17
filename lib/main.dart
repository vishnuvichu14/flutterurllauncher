import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(urlLauncher());
}

_launchURL() async {
  const url = 'https://flutter.dev';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class urlLauncher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("URL LAUNCHER"),
            centerTitle: true,
          ),
          backgroundColor: Colors.lightBlue.shade100,
          body: Center(
            child: RaisedButton(
              onPressed: _launchURL,
              child: Text('Goto Flutter docs',style: TextStyle(fontSize: 16),),
            ),
          ),
        ),
      ),
    );
  }
}

