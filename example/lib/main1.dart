import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  initState() {
    super.initState();
  }

  void whatsAppOpen() async {
    bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");

    if (whatsapp) {
      await FlutterLaunch.launchWathsApp(phone: "8127660376", message: "Hello, flutter_launch");
    }
    else {
      print("Whatsapp no esta instalado");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Plugin example app'),
        ),
        body: Center(
          child: FlatButton(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Whatsapp",)
              ],
            ),
            onPressed: () {
              whatsAppOpen();
            },
          )
        ),
      ),
    );
  }
}