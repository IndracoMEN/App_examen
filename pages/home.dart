import 'package:flutter/material.dart';

class homeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        drawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Login/perfil"),
              ),
            ],
          ),
        ),
        body: Container(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.person, size: 160.0, color: Colors.purple),
            new Text("Segundo Tab", style: TextStyle(color: Colors.white))
          ],
        ))));
  }
}
