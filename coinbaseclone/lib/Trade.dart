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
      length: 8,
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
                }, icon: const Icon(Icons.notifications_active_outlined))
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),

          bottom: const TabBar(
            isScrollable: true,
            indicator: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.green,
                ),
                bottom: BorderSide(
                  color: Colors.green
                ),
                right: BorderSide(
                    color: Colors.green
                ),
                left: BorderSide(
                    color: Colors.green
                ),
              )
            ),
            tabs: <Widget> [
              Tab(text: 'Tradeable'),
              Tab(text: 'Watchlist'),
              Tab(text: 'New on Coinbase'),
              Tab(text: 'All assets'),
              Tab(text: 'Gainers'),
              Tab(text: 'Losers'),
              Tab(text: 'Losers'),
              Tab(text: 'Losers'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget> [
            Center(
                child: Text("Tradable", style: TabBarTextStyle,)
            ),
            Center(
                child: Text("Tradable")
            ),
            Center(
                child: Text("Tradable")
            ),
            Center(
                child: Text("Tradable")
            ),
            Center(
                child: Text("Tradable")
            ),
            Center(
                child: Text("Tradable")
            ),
            Center(
                child: Text("Tradable")
            ),
            Center(
                child: Text("Tradable")
            ),
          ],
        ),
        drawer: draw(),
        backgroundColor: Colors.black,
      ),
    );
  }
}