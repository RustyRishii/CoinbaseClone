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
        title: const Text("Add Bank account"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Enter your IFSC code',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 5),
            child: Text(
              'Enter the IFSC code',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 17),
            child: Text(
              'IFSC code    ℹ',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 5, right: 20),
            child: TextField(
              maxLength: 11,
              textCapitalization: TextCapitalization.words,
              style: TextStyle(color: Colors.white),
              //obscureText: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.5)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.5)
                )
                //labelText: 'IFSC code',
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
