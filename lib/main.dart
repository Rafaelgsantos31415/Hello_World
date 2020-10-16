import 'package:flutter/material.dart';

main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Center(
        child: Container(
            child:
                Text('Grupo: Pablo Danilo, Rafael Goncalves, Raphael Marinho')),
      ),
      floatingActionButton: Center(
        child: FlatButton(
            color: Colors.blueGrey,
            child: Icon(
              Icons.play_arrow,
              color: Colors.white60,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Text("Hello World"),
                      actions: <Widget>[
                        new FlatButton(
                          child: new Text("Fechar"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            }),
      ),
    );
  }
}
