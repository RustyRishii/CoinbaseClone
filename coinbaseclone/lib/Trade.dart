/*

import 'package:flutter/material.dart';
import 'package:coinbaseclone/earn.dart';
import 'package:coinbaseclone/image.dart';
import 'package:coinbaseclone/invite.dart';
import 'package:coinbaseclone/main.dart';
import 'notifications.dart';

class trade extends StatefulWidget {
  const trade({Key? key}) : super(key: key);

  @override
  State<trade> createState() => _tradeState();
}

class _tradeState extends State<trade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trade"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const notifs()),
                );
              }, icon: const Icon(Icons.notifications_active_outlined))
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: draw(),
      backgroundColor: Colors.black,
    );
  }
}


 */