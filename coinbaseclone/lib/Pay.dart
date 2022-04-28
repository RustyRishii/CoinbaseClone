import 'package:flutter/material.dart';
import 'package:coinbaseclone/earn.dart';
import 'package:coinbaseclone/image.dart';
import 'package:coinbaseclone/invite.dart';
import 'package:coinbaseclone/main.dart';
import 'notifications.dart';

class pay extends StatefulWidget {
  const pay({Key? key}) : super(key: key);

  @override
  State<pay> createState() => _payState();
}

class _payState extends State<pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pay"),
        centerTitle: true,
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
        backgroundColor: Colors.black,
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
          const Divider(height: 50, color: Colors.grey),
          Column(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 70, 260, 0),
                child: Text(
                  "Crypto gifts",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ), //title
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 150, 0),
                child: Text(
                  "Give crypto to your "
                      "friends and family",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ), //contexts
            ],
          ), //Crypto gift and context
          const Padding(
            padding: EdgeInsets.fromLTRB(250, 25, 0, 0),
            child: const Icon(Icons.card_giftcard, color: Colors.white, size: 150),
          ), //GiftCard icon
          const Padding(
            padding: EdgeInsets.only(top: 555),
            child: const Divider(
              height: 1000,
              color: Colors.grey,
            ),
          ), //Divider
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 650, bottom: 5),
                child: ButtonTheme(
                  minWidth: 180,
                  height: 60,
                  child: RaisedButton(
                    onPressed: () {
                      // launch('https://play.google.com/store/apps/details?id=org.toshi');
                    },
                    child: const Text(
                      "Receive",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: const Color.fromRGBO(50, 53, 65, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                ),
              ), //Receive button
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 650, bottom: 5),
                child: ButtonTheme(
                  minWidth: 180,
                  height: 60,
                  child: RaisedButton(
                    onPressed: () {
                      // launch('https://play.google.com/store/apps/details?id=org.toshi');
                    },
                    child: const Text(
                      "Send",
                      style: TextStyle(fontSize: 20),
                    ),
                    color: const Color.fromRGBO(55, 115, 245, 1),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                  ),
                ),
              ), //Send button
            ],
          ) //Send and Receive buttons
        ],
      ),
      backgroundColor: const Color.fromRGBO(10, 11, 13, 1),
    );
  }
}