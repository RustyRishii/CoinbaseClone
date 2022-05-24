// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:coinbaseclone/main.dart';
import 'notifications.dart';
import 'package:coinbaseclone/Trade.dart';

class assets extends StatefulWidget {
  const assets({Key? key}) : super(key: key);

  @override
  State<assets> createState() => _assetsState();
}

class _assetsState extends State<assets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assets"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const notifs()),
                );
              },
              icon: const Icon(Icons.notifications_active_outlined))
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: const draw(),
      body: Stack(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "Your balance",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ), //Your balance Text
          const Padding(
            padding: EdgeInsets.only(left: 25, top: 30),
            child: Text(
              "₹0.00",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(100, 75, 100, 0),
                child: Icon(
                  Icons.stars_outlined,
                  color: Colors.white,
                  size: 200,
                ),
              )
            ],
          ), //Icon
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 270, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Get started with crypto",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ), //Get started with crypto Text
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Your crypto assets will appear here.",
                  style: TextStyle(color: Colors.white, fontSize: 21),
                ),
              ],
            ),
          ), //Your assets will appear here
          Padding(
            padding: const EdgeInsets.fromLTRB(0,350, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  minWidth: 350,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => trade()),
                      );
                    },
                    child: const Text(
                      "Explore assets",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    color: const Color.fromRGBO(50, 53, 65, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                ),
              ],
            ),
          ), //Explore assets button
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}