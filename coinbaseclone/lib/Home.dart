import 'package:flutter/material.dart';
import 'package:coinbaseclone/main.dart';
import 'notifications.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //TextStyle1 for the Buy,sell,send,receive,convert TEXTS
  var TextStyle1 = const TextStyle(
      color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold);

  //TextStyle1 for the Buy,sell,send,receive,convert BUTTONS
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
                        "↹",
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
            const Divider(height: 45, color: Colors.grey),
            Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(22, 0, 0, 10),
                  child: Text(
                    "Watchlist",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                )
              ],
            ), //Watch list Row
            Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: CircleAvatar(
                      radius: 12,
                      child: Image.network(
                          "https://bitcoin.org/img/icons/opengraph.png?1648897668")),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        "Bitcoin",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 20.5, 0),
                      child: Text(
                        'BTC',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(140, 0, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Text("₹ 2,963,413.77",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: Text("₹ -1.93%",
                            style: TextStyle(color: Colors.red, fontSize: 20)),
                      ),
                    ],
                  ),
                ), //Column
              ],
            ), //Bitcoin
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: CircleAvatar(
                        backgroundColor: Colors.lightBlueAccent,
                        radius: 12,
                        child: Image.network(
                            "https://ethereum.org/static/6b935ac0e6194247347855dc3d328e83/13c43/eth-diamond-black.png")),
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "Ethereum",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 32, 0),
                        child: Text(
                          'ETH',
                          style: TextStyle(fontSize: 17, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                    child: Column(
                      children: <Widget>[
                        Text("₹ 217,779.03",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 0, 0, 0),
                          child: Text("₹ -2.83%",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 20)),
                        ),
                      ],
                    ),
                  ), //Column
                ],
              ),
            ), //Ethereum
            const Divider(height: 45, color: Colors.grey), //Divider
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 15),
              child: Row(
                children: [
                  Text(
                    "Top movers",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
            ), //Row Top movers
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 130,
                      height: 130,
                      //color: Colors.grey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.network(
                                    "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png")),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget> [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text("SOL", style: TextStyle(color: Colors.white, fontSize: 20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("₹ 7000", style: TextStyle(color: Colors.grey, fontSize: 20),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text("-3.2%", style: TextStyle(color: Colors.red, fontSize: 30),),
                          ),
                        ],
                      ),
                    ),
                  ), //Solana
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 130,
                      height: 130,
                      //color: Colors.grey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.network(
                                    "https://ethereum.org/static/6b935ac0e6194247347855dc3d328e83/13c43/eth-diamond-black.png")),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget> [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("ETH", style: TextStyle(color: Colors.white, fontSize: 20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("₹ 2,00,000", style: TextStyle(color: Colors.grey, fontSize: 20),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text("-12.2%", style: TextStyle(color: Colors.red, fontSize: 30),),
                          ),
                        ],
                      ),
                    ),
                  ), //Ethereum
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 130,
                      height: 130,
                      //color: Colors.grey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.network(
                                    "https://bitcoin.org/img/icons/opengraph.png?1648897668")),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget> [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("BTC", style: TextStyle(color: Colors.white, fontSize: 20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("₹ 300000", style: TextStyle(color: Colors.grey, fontSize: 20),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text("-40.2%", style: TextStyle(color: Colors.red, fontSize: 30),),
                          ),
                        ],
                      ),
                    ),
                  ), //Bitcoin
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 130,
                      height: 130,
                      //color: Colors.grey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.network(
                                    "https://cdn.iconscout.com/icon/premium/png-256-thumb/cardano-4441326-3679756.png")),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget> [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text("ADA", style: TextStyle(color: Colors.white, fontSize: 20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("₹ 15,000", style: TextStyle(color: Colors.grey, fontSize: 20),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text("-1.2%", style: TextStyle(color: Colors.red, fontSize: 30),),
                          ),
                        ],
                      ),
                    ),
                  ), //Cardano
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[900],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      width: 130,
                      height: 130,
                      //color: Colors.grey,
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 60, 0),
                            child: CircleAvatar(
                                radius: 20,
                                child: Image.network(
                                    "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png")),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget> [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                                child: Text("SOL", style: TextStyle(color: Colors.white, fontSize: 20),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("₹ 7000", style: TextStyle(color: Colors.grey, fontSize: 20),),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Text("-3.2%", style: TextStyle(color: Colors.red, fontSize: 30),),
                          ),
                        ],
                      ),
                    ),
                  ), //Solana
                ],
              ),
            ),
            const Divider(height: 45, color: Colors.grey),
          ],
        ),
      ), //draw is a stful widget in main.dart
      backgroundColor: Colors.black,
    );
  }
}
