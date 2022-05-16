import 'package:flutter/material.dart';
import 'dart:io';

class PlatformDetector extends StatelessWidget {
  PlatformDetector({Key? key}) : super(key: key);

  var PlatformStyle = const TextStyle(fontSize: 20, color: Colors.white);

  @override
  bool isIOS = Platform.isIOS;
  bool isAndroid = Platform.isAndroid;
  bool isWindows = Platform.isWindows;
  bool isLinux = Platform.isLinux;
  bool isMacOs = Platform.isMacOS;

  int ProNum = Platform.numberOfProcessors;

  static int get numberOfProcessors => numberOfProcessors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Platform detector'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('isIOS: $isIOS', style: PlatformStyle),
              const SizedBox(height: 20),
              Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Text('isAndroid: $isAndroid', style: PlatformStyle),
                ),
              ),
              const SizedBox(height: 20),
              Text('isWindows: $isWindows', style: PlatformStyle),
              const SizedBox(height: 20),
              Text('isMacOs: $isMacOs', style: PlatformStyle),
              const SizedBox(height: 20),
              Text('Number of processors is $ProNum', style: PlatformStyle),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}