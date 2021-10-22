import 'package:driver_widget/mis_cupones.dart';
import 'package:flutter/material.dart';
import 'package:driver_widget/pages/cupones.dart';
import 'package:driver_widget/pages/delivery.dart';
import 'package:driver_widget/pages/home.dart';
import 'package:driver_widget/pages/mas.dart';

void main() {
  runApp(MaterialApp(
    home: mynavigator(),
  ));
}

class mynavigator extends StatefulWidget {
  @override
  _mynavigatorState createState() => _mynavigatorState();
}

class _mynavigatorState extends State<mynavigator>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            flexibleSpace: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/logo_mcdonalds.jpg"))))),
        body: TabBarView(children: [
          deliveryTab(),
          mis_cuponesTab(),
          masTab(),
          homeTab(),
          cuponesTab()
        ], controller: controller),

//esta propiedad coloca una barra en la parte inferior con el conjunto de pestañas necesarios
        bottomNavigationBar: Material(
            color: Colors.white,
            child: TabBar(
              indicatorColor: Colors.grey,
              labelColor: Colors.grey[400],
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                    text: "Home",
                    icon: new Icon(Icons.fastfood, color: Colors.grey[500])),
                Tab(
                  text: "McDelivery",
                  icon: new Icon(
                    Icons.brunch_dining_sharp,
                    color: Colors.grey[500],
                  ),
                ),
                Tab(
                    text: "cupones",
                    icon: new Icon(Icons.local_attraction_rounded,
                        color: Colors.grey[500])),
                Tab(
                    text: "Mis cupones",
                    icon: new Icon(Icons.local_offer, color: Colors.grey[500])),
                Tab(
                    text: "más",
                    icon: new Icon(Icons.keyboard_control_sharp,
                        color: Colors.grey[500])),
              ],
              controller: controller,
            )));
  }
}
