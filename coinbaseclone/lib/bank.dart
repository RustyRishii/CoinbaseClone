import 'package:coinbaseclone/addbank.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class bank extends StatefulWidget {
  const bank({Key? key}) : super(key: key);

  @override
  State<bank> createState() => _bankState();
}

class _bankState extends State<bank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a payment method"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const addbank()),
              );
            } ,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Icon(
                    Icons.food_bank,
                    size: 40,
                    color: Colors.white,
                  ),
                ), //Bank Icon
                Padding(
                  padding: EdgeInsets.fromLTRB(55, 5, 0, 0),
                  child: Text(
                    "Bank transfer",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ), //Bank transfer Text
                Padding(
                  padding: EdgeInsets.fromLTRB(55, 30, 0, 0),
                  child: Text(
                    "Sell only",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ), //Sell only Text
                Padding(
                  padding: EdgeInsets.fromLTRB(55, 50, 0, 0),
                  child: Text(
                    "Add a bank account to sell crypto. Trades processed instantly via IMPS.",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                  ),
                ), //Context
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 100, 0,0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO( 0, 17, 49, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5),)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Text(
                        "Recommended",style: TextStyle(color: Colors.blueAccent, fontSize: 23),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}