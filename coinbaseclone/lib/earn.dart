import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class earn extends StatefulWidget {
  const earn({Key? key}) : super(key: key);

  @override
  State<earn> createState() => _earnState();
}

class _earnState extends State<earn> {

  var CryptoTextStyle3 = const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  //CryptoTextStyle3 for crypto coins Text in the gridview section

  var CryptoPercTextStyle = const TextStyle(color: Color.fromRGBO(145, 149, 161, 1), fontSize: 35);
  //CryptoPercTextStyle for the Percentage of the returns on the crypto coins in the grid view

  var APYTextSyle = const TextStyle(color: Color.fromRGBO(145, 149, 161, 1), fontSize: 20);
  //APYTextStyle for the APY Text on the crypto coins in the gridview

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/c/c0/Hand%2C_bar_and_pie_chart%2C_dark.png'),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 65, 0),
            child: Text(
              "Earn crypto by holding crypto",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 2, 0, 0),
            child: Text(
              'You can earn passive yield over time when you hold certain assets on Coinbase.'
              ' Get started by buying or depositing a yield-earning asset today.',
              style: TextStyle(color: Colors.grey, fontSize: 19),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 270, 0),
            child: TextButton(
                onPressed: () {
                  launch(
                      'https://help.coinbase.com/en/coinbase/trading-and-funding/staking-rewards/yield');
                },
                child: Text(
                  'Learn more',
                  style: TextStyle(color: Colors.blue[600], fontSize: 19),
                )),
          ),
          const Divider(
            height: 10,
            color: Colors.grey,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Card(
                    color: const Color.fromRGBO(20, 21, 25, 1),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 135, 135),
                          child: Image.network(
                              'https://cryptologos.cc/logos/cosmos-atom-logo.png?v=022'),
                        ),
                         Padding(
                          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                          child: Text(
                            "Cosmos",
                            style: CryptoTextStyle3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 95, 0, 0),
                          child: Text(
                            "5.00%",
                            style: CryptoPercTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 105, 0, 0),
                          child: Text(
                            "APY",
                            style: APYTextSyle,
                          ),
                        ) // Cosmos padding left
                      ],
                    ),
                  ),
                ), //Cosmos padding:left 10
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Card(
                    color: const Color.fromRGBO(20, 21, 25, 1),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 135, 135),
                          child: Image.network(
                              'https://cryptologos.cc/logos/tezos-xtz-logo.png?v=022'),
                        ),
                         Padding(
                          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                          child: Text(
                            "Tezos",
                            style: CryptoTextStyle3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 95, 0, 0),
                          child: Text(
                            "4.63%",
                            style: CryptoPercTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 105, 0, 0),
                          child: Text(
                            "APY",
                            style: APYTextSyle,
                          ),
                        ) // Cosmos padding left
                      ],
                    ),
                  ),
                ), //Tezos padding:right 10
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Card(
                    color: const Color.fromRGBO(20, 21, 25, 1),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 135, 135),
                          child: Image.network(
                              'https://cryptologos.cc/logos/cardano-ada-logo.png?v=022'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                          child: Text(
                            "Cardano",
                            style: CryptoTextStyle3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 95, 0, 0),
                          child: Text(
                            "3.75%",
                            style: CryptoPercTextStyle
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 105, 0, 0),
                          child: Text(
                            "APY",
                            style: APYTextSyle,
                          ),
                        ) // Cosmos padding left
                      ],
                    ),
                  ),
                ), //Cardano padding left 10
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Card(
                    color: const Color.fromRGBO(20, 21, 25, 1),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 135, 135),
                          child: Image.network(
                              'https://cryptologos.cc/logos/ethereum-eth-logo.png?v=022'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                          child: Text(
                            "Ethereum 2",
                            style: CryptoTextStyle3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 95, 0, 0),
                          child: Text(
                            "3.68%",
                            style: CryptoPercTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 105, 0, 0),
                          child: Text(
                            "APY",
                            style: APYTextSyle,
                          ),
                        ) // Cosmos padding left
                      ],
                    ),
                  ),
                ), //Ethereum 2 padding right 10
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Card(
                    color: const Color.fromRGBO(20, 21, 25, 1),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 135, 135),
                          child: Image.network(
                              'https://cryptologos.cc/logos/multi-collateral-dai-dai-logo.png?v=022'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                          child: Text(
                            "Dai",
                            style: CryptoTextStyle3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 95, 0, 0),
                          child: Text(
                            "2.76%",
                            style: CryptoPercTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 105, 0, 0),
                          child: Text(
                            "APY",
                            style: APYTextSyle,
                          ),
                        ) // Cosmos padding left
                      ],
                    ),
                  ),
                ), //Dai padding left 10
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Card(
                    color: const Color.fromRGBO(20, 21, 25, 1),
                    child: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 135, 135),
                          child: Image.network(
                              'https://cryptologos.cc/logos/tether-usdt-logo.png?v=022'),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                          child: Text(
                            "Tether",
                            style: CryptoTextStyle3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 95, 0, 0),
                          child: Text(
                            "1.77%",
                            style: CryptoPercTextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 105, 0, 0),
                          child: Text(
                            "APY",
                            style: APYTextSyle,
                          ),
                        ) // Cosmos padding left
                      ],
                    ),
                  ),
                ), //Tether padding right 10
              ],
            ),
          )
        ],
      ),
      backgroundColor: const Color.fromRGBO(10, 11, 13, 1),
    );
  }
}