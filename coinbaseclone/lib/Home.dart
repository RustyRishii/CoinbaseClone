import 'package:flutter/material.dart';
import 'package:coinbaseclone/main.dart';
import 'notifications.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  //TextStyle1 is for the Buy,sell,send,receive,convert TEXTS
  var TextStyle1 = const TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold);

  //TextStyle1 is for the Buy,sell,send,receive,convert BUTTONS
  var TextSyle2 = const TextStyle(color: Colors.white, fontSize: 15);

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
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: const draw(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.network(
                'https://techcrunch.com/wp-content/uploads/2021/12/GettyImages-1237717426.jpg'),
            //Image
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "Welcome to Coinbase!",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            //welcome to coinbase
            const SizedBox(height: 5),
            //SizedBox
            const Text(
              "Make your first investment today",
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            //make first investment today
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 5),
              child: ButtonTheme(
                minWidth: 350,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    //launch('https://play.google.com/store/apps/details?id=org.toshi');
                  },
                  child: const Text(
                    "Add payment method",
                    style: TextStyle(fontSize: 20),
                  ),
                  color: const Color.fromRGBO(55, 115, 245, 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                ),
              ),
            ),
            //Add payment method
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                      backgroundColor: const Color.fromRGBO(55, 115, 245, 1),
                      child: Text(
                        "+",
                        style: TextStyle1,
                      )), //+
                  CircleAvatar(
                      backgroundColor: const Color.fromRGBO(55, 115, 245, 1),
                      child: Text(
                        "-",
                        style: TextStyle1,
                      )), //-
                  CircleAvatar(
                      backgroundColor: const Color.fromRGBO(55, 115, 245, 1),
                      child: Text(
                        "↑",
                        style: TextStyle1,
                      )), //↑
                  CircleAvatar(
                      backgroundColor: const Color.fromRGBO(55, 115, 245, 1),
                      child: Text(
                        "↓",
                        style: TextStyle1,
                      )), //↓
                  CircleAvatar(
                      backgroundColor: const Color.fromRGBO(55, 115, 245, 1),
                      child: Text(
                        "↓",
                        style: TextStyle1,
                      )), //↹
                ],
              ),
            ),
            // Buy,sell,send,receive,convert BUTTONS
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      "Buy",
                      style: TextSyle2,
                    ),
                  ), //Buy
                  Padding(
                    padding: const EdgeInsets.only(left: 52),
                    child: Text(
                      "Sell",
                      style: TextSyle2,
                    ),
                  ), //Sell
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Text(
                      "Send",
                      style: TextSyle2,
                    ),
                  ), //Send
                  Padding(
                    padding: const EdgeInsets.only(left: 31),
                    child: Text(
                      "Receive",
                      style: TextSyle2,
                    ),
                  ), //Receive
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Text(
                      "Convert",
                      style: TextSyle2,
                    ),
                  ), //Receive
                ],
              ),
            ),
            //Buy,sell,send,receive,convert TEXTS
            const Divider(height: 35, color: Colors.grey),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(22, 0, 0, 0),
                  child: Text(
                    "Watchlist",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                )
              ],
            )

          ],
        ),
      ), //draw is a stful widget in main.dart
      backgroundColor: Colors.black,
    );
  }
}

