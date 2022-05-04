
import 'package:flutter/material.dart';

class addbank extends StatefulWidget {
  const addbank({Key? key}) : super(key: key);

  @override
  State<addbank> createState() => _addbankState();
}

class _addbankState extends State<addbank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Bank account"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Enter IFSC code',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Enter the IFSC code',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 17),
            child: Text(
              'IFSC code    ℹ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight:  FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'IFSC code',
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.purple,
    );
  }
}