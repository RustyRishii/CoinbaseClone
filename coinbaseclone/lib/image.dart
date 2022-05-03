import 'package:flutter/material.dart';

class image extends StatelessWidget {
  const image({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image.network('https://pbs.twimg.com/media/FGCpQkBXMAIqA6d.jpg:large',fit:BoxFit.fill),
      ),
      backgroundColor: Colors.black,
    );
  }
}