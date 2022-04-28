import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class invite extends StatefulWidget {
  const invite({Key? key}) : super(key: key);

  @override
  State<invite> createState() => _inviteState();
}

class _inviteState extends State<invite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invite Friends'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              // Image.network('https://freepngimg.com/thumb/gift/21939-2-christmas-gift-box-thumb.png', scale: 150,),
              const Icon(
                Icons.card_giftcard,
                color: Colors.white,
                size: 150,
              ),
              //Gift card icon
              const Padding(
                padding: EdgeInsets.fromLTRB(150, 50, 0, 0),
                child: Text(
                  "Rs 201 Bitcoin for you,",
                  style: TextStyle(color: Colors.white, fontSize: 21),
                ),
              ),
              ////Rs 201 for you
              const Padding(
                padding: EdgeInsets.fromLTRB(150, 80, 0, 0),
                child: Text(
                  "Rs 201 for a friend",
                  style: TextStyle(color: Colors.white, fontSize: 21),
                ),
              ),
              //Rs 201 for friend
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 140),
                child: Text(
                  'You\'ll both get rewarded when your friend trades Rs 1,000 in crypto.',
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              //Info
              Padding(
                padding: const EdgeInsets.fromLTRB(150, 147, 0, 0),
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Terms Apply",
                      style: TextStyle(color: Colors.blue[900], fontSize: 18),
                    )),
              )
              //Terms Apply button
              //T & C
            ],
          ),

          const Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 250, 10),
            child: Text(
              "Share your link",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19),
            ),
          ), //Share your link text

          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  height: 70,
                  width: 400,
                  //color: Colors.green,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(20))),
                ),
              ), //Container Border
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 5, 40, 0),
                child: TextButton(
                  onPressed: () {
                    Clipboard.setData(const ClipboardData(
                        text:
                        "https://coinbase.com/join/uv1dt1?src=android-link"));
                    const snack = SnackBar(
                      content: Text("Link Copied to ClipBoard"),
                      duration: Duration(seconds: 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snack);
                  },
                  child: const Text(
                    "https://coinbase.com/join/uv1dt1?src=android-link",
                    style: TextStyle(fontSize: 20),
                  ),
                  /*
                  style: TextButton.styleFrom(
                    primary: Colors.red,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ),

                   */
                ),
              ), //Link TextButton
            ],
          ),

          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  "More ways to share",
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ), //More ways to share

          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromRGBO(20, 21, 25, 1)),
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.message_rounded,
                          size: 50,
                          color: Colors.greenAccent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Message",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  //color: Colors.green,
                ),
              ), //Messages Box
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color.fromRGBO(20, 21, 25, 1)),
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.whatsapp,
                          size: 50,
                          color: Colors.greenAccent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Whatsapp",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  //color: Colors.green,
                ),
              ), //WhatsApp Box
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: const Color.fromRGBO(20, 21, 25, 1)),
                  child: Column(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Icon(
                          Icons.share,
                          size: 50,
                          color: Colors.greenAccent,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "Share",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )
                    ],
                  ),
                  //color: Colors.green,
                ),
              ), //Share Box
            ],
          ), //Share row

          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 200,
                  width: 375,
                  child: const Padding(
                    padding:  EdgeInsets.fromLTRB(20, 50, 0, 0),
                    child: Text(
                      "Crypto gifts",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //color: Colors.black,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(0)),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}

/*
https://freepngimg.com/thumb/gift/21939-2-christmas-gift-box-thumb.png
*/