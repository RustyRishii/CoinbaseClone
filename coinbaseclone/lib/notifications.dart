import 'package:flutter/material.dart';

class notifs extends StatefulWidget {
  const notifs({Key? key}) : super(key: key);

  @override
  State<notifs> createState() => _notifsState();
}

class _notifsState extends State<notifs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}