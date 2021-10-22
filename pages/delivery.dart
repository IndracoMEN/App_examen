import 'package:flutter/material.dart';

class deliveryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        body: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.watch_later, size: 160.0, color: Colors.purple),
            new Text("Segundo Tab", style: TextStyle(color: Colors.white))
          ],
        ))));
  }
}
