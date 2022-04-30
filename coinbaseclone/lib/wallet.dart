import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class wallet extends StatefulWidget {
  const wallet({Key? key}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Coinbase Wallet",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
              'https://techcrunch.com/wp-content/uploads/2021/12/GettyImages-1237717426.jpg'),
          Stack(
            children: <Widget>[
              Row(
                children: const  <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(25, 50, 0, 0),
                    child:  Text(
                      "⇆",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                   Padding(
                    padding: EdgeInsets.fromLTRB(17, 50, 0, 0),
                    child: Text(
                      "Trade more assets",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ), //Trade assets Row
              Padding(
                padding: EdgeInsets.fromLTRB(67, 77.5, 0, 0),
                child: Text(
                  "Keep your cypto secure and trade even more assets",
                  style: TextStyle(color: Colors.grey, fontSize: 19),
                ),
              ), //Context
              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 170, 0, 0),
                    child: const Text(
                      "%",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 170, 0, 0),
                    child: Text(
                      "Earn interest on your crypto",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ), //Earn interest
              const Padding(
                padding: EdgeInsets.fromLTRB(66, 200, 0, 0),
                child: const Text(
                  "Explore all the ways to earn interest on the crypto you hold",
                  style: TextStyle(color: Colors.grey, fontSize: 19),
                ),
              ), //Context

              Row(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 290, 0, 0),
                    child: const Text(
                      "%",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(25, 290, 0, 0),
                    child: Text(
                      "Explore decentralized apps",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ), //Explore Dapps
              const Padding(
                padding: EdgeInsets.fromLTRB(66, 320, 0, 0),
                child: const Text(
                  "Check out the world of decentralized finance and all Dapps have to offer.",
                  style: TextStyle(color: Colors.grey, fontSize: 19),
                ),
              ), //context
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: const Divider(
              height: 15,
              color: Colors.grey,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 5),
            child: ButtonTheme(
              minWidth: 350,
              height: 50,
              child: RaisedButton(
                onPressed: () {
                  launch('https://play.google.com/store/apps/details?id=org.toshi');
                },
                child: const Text("Download wallet",style: TextStyle(fontSize: 20),),
                color: const Color.fromRGBO(55, 115, 245, 1),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50))),
              ),
            ),
          ) //Download wallet button
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
