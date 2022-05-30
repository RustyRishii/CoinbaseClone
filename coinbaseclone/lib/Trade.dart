import 'package:flutter/material.dart';
import 'package:coinbaseclone/main.dart';
import 'notifications.dart';

class trade extends StatefulWidget {
  const trade({Key? key}) : super(key: key);

  @override
  State<trade> createState() => _tradeState();
}

class _tradeState extends State<trade> {
  var TabBarTextStyle = const TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
          bottom: TabBar(
            unselectedLabelColor: Colors.white,
            isScrollable: true,
            indicator: ShapeDecoration(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                color: Colors.indigo[900]),
            tabs: const <Widget>[
              Tab(text: 'Tradable'),
              Tab(text: 'Watchlist'),
              Tab(text: 'New on Coinbase'),
              Tab(text: 'All assets'),
              Tab(text: 'Gainers'),
              Tab(text: 'Losers'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Stack(
                children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 605),
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
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                "Ethereum",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 0, 32, 0),
                              child: Text(
                                'ETH',
                                style:
                                    TextStyle(fontSize: 17, color: Colors.grey),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                          child: Column(
                            children: const <Widget>[
                              Text("₹ 217,779.03",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              Padding(
                                padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                                child: Text("₹ -2.83%",
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 20)),
                              ),
                            ],
                          ),
                        ), //Column
                      ],
                    ),
                  ),
                ],
              ),
            ]),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 605),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: CircleAvatar(
                            backgroundColor: Colors.lightBlueAccent,
                            radius: 12,
                            child: Image.network(
                                "https://bitcoin.org/img/icons/opengraph.png?1648897668")),
                      ),
                      Column(
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              "Bitcoin",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
                            child: Text(
                              'BTC',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                        child: Column(
                          children: const <Widget>[
                            Text("₹ 217,779.03",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Padding(
                              padding: EdgeInsets.fromLTRB(35, 0, 0, 0),
                              child: Text("₹ -2.83%",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 20)),
                            ),
                          ],
                        ),
                      ), //Column
                    ],
                  ),
                ),
              ],
            ),
            Image.network("https://bitcoin.org/img/icons/opengraph.png?1648897668"),
            Image.network("https://bitcoin.org/img/icons/opengraph.png?1648897668"),
            Image.network("https://bitcoin.org/img/icons/opengraph.png?1648897668"),
            Image.network("https://bitcoin.org/img/icons/opengraph.png?1648897668"),
          ],
        ),
        //bottomNavigationBar: MyApp(),
        drawer: const draw(),
        backgroundColor: Colors.black,
      ),
    );
  }
}