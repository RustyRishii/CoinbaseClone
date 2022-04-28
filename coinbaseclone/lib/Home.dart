import 'package:flutter/material.dart';
import 'package:coinbaseclone/earn.dart';
import 'package:coinbaseclone/image.dart';
import 'package:coinbaseclone/invite.dart';
import 'package:coinbaseclone/main.dart';
import 'notifications.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
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
              tooltip: MaterialLocalizations
                  .of(context)
                  .openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: draw(), //draw is a stful widget in main.dart
      backgroundColor: Colors.black
      ,
    );
  }
}


