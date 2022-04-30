import 'package:flutter/material.dart';
import 'package:coinbaseclone/Assets.dart';
import 'package:coinbaseclone/Home.dart';
import 'package:coinbaseclone/Pay.dart';
import 'package:coinbaseclone/Trade.dart';
import 'package:coinbaseclone/wallet.dart';

import 'image.dart';
import 'invite.dart';
import 'earn.dart';
import 'wallet.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int CurrentInt = 0;

  final List<Widget> children = [
    const home(),
    const assets(),
    const trade(),
    const pay(),
  ];

  void OnTappedBar(int index) {
    setState(() {
      CurrentInt = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[CurrentInt],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Colors.grey, width: 0.2))),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: OnTappedBar,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.blue[900],
          unselectedFontSize: 15,
          selectedFontSize: 15,
          currentIndex: CurrentInt,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Assets"),
            BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Trade"),
            BottomNavigationBarItem(icon: Icon(Icons.circle), label: "Pay"),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}


class draw extends StatefulWidget {
  const draw({Key? key}) : super(key: key);

  @override
  State<draw> createState() => _drawState();
}

class _drawState extends State<draw> {

  var DrawButtonTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Drawer(
          backgroundColor: const Color.fromRGBO(31, 32, 37, 1),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const image()),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.'
                            'com/images?q=tbn:ANd9GcR-UMA7UwvVFmMIE7fMY2_Z3sep5UBMpmnroQ&usqp=CAU'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 19),
                child: Center(
                    child: Text(
                      "Rusty Nectar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    )),
              ), //Name Rusty Nectar
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 35),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Profile & Settings",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(50, 53, 62, 1),
                    shape: const StadiumBorder(),
                    minimumSize: const Size(400, 50),
                    maximumSize: const Size(400, 50),
                  ),
                ),
              ), //Profile and Settings button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const earn()),
                    );
                  },
                  child: Text(
                    "💸  Earn yield",
                    style: DrawButtonTextStyle,
                  ),
                ),
              ), //Earn yield
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const invite(),
                        ));
                    print('Clicked');
                  },
                  child: Text(
                    "📨  Invite Friends",
                    style: DrawButtonTextStyle,
                  ),
                ),
              ), //Invite Friends
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 105, 0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "🎁  Send a gift",
                    style: DrawButtonTextStyle,
                  ),
                ),
              ), //Send a gift
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const wallet()),
                    );
                  },
                  child: Text(
                    "🎁  Get Coinbase Wallet",
                    style: DrawButtonTextStyle,
                  ),
                ),
              ), //Get Coinbase Wallet
            ],
          ),
        ),
      ),
    );
  }
}




/*

drawer: SafeArea(
            child: Drawer(
              backgroundColor: const Color.fromRGBO(31, 32, 37, 1),
              child: ListView(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: CircleAvatar(
                      radius: 90,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.'
                          'com/images?q=tbn:ANd9GcR-UMA7UwvVFmMIE7fMY2_Z3sep5UBMpmnroQ&usqp=CAU'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 19),
                    child: Center(
                        child: Text(
                      "Rusty Nectar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    )),
                  ), //Name Rusty Nectar
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 35),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Profile & Settings",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromRGBO(50, 53, 62, 1),
                        shape: const StadiumBorder(),
                        minimumSize: const Size(400, 50),
                        maximumSize: const Size(400, 50),
                      ),
                    ),
                  ), //Profile and Settings button
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "💸  Earn yield",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ), //Earn yield
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "📨  Invite Friends",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ), //Invite Friends
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 105, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "🎁  Send a gift",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ), //Send a gift
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "🎁  Get Coinbase Wallet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                    ),
                  ), //Get Coinbase Wallet
                ],
              ),
            ),
        ),

 */

/*
class draw extends StatefulWidget {
  const draw({Key? key}) : super(key: key);

  @override
  State<draw> createState() => _MyAppState();
}

class _drawState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: const Color.fromRGBO(31, 32, 37, 1),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: GestureDetector(
                  onTap: ()
                  {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const image()),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 90,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.'
                            'com/images?q=tbn:ANd9GcR-UMA7UwvVFmMIE7fMY2_Z3sep5UBMpmnroQ&usqp=CAU'),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 19),
                child: Center(
                    child: Text(
                      "Rusty Nectar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.white),
                    )),
              ), //Name Rusty Nectar
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 35),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Profile & Settings",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(50, 53, 62, 1),
                    shape: const StadiumBorder(),
                    minimumSize: const Size(400, 50),
                    maximumSize: const Size(400, 50),
                  ),
                ),
              ), //Profile and Settings button
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 120, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const earn()),
                    );
                  },
                  child: const Text(
                    "💸  Earn yield",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ), //Earn yield
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const invite(),
                        ));
                    print('Clicked');
                  },
                  child: const Text(
                    "📨  Invite Friends",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ), //Invite Friends
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 105, 0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "🎁  Send a gift",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ), //Send a gift
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "🎁  Get Coinbase Wallet",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white),
                  ),
                ),
              ), //Get Coinbase Wallet
            ],
          ),
        ),
      ),
    );
  }
}


 */

