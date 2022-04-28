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
        child: Image.network('https://encrypted-tbn0.gstatic.'
            'com/images?q=tbn:ANd9GcR-UMA7UwvVFmMIE7fMY2_Z3sep5UBMpmnroQ&usqp=CAU'),
      ),
      backgroundColor: Colors.black,
    );
  }
}