import 'dart:math';

import 'package:assignments/assign_10/Instagram.dart';
import 'package:assignments/assign_10/about.dart';
import 'package:assignments/assign_10/calculator.dart';
import 'package:assignments/assign_10/chat_app.dart';
import 'package:assignments/assign_10/facebook.dart';
import 'package:flutter/material.dart';

class Assign_10 extends StatefulWidget {
  const Assign_10({super.key});

  @override
  State<Assign_10> createState() => _Assign_10State();
}

List<String> buttonList = [
  'Instagram sign in Page',
  'Facebook Sign in Page',
  'Chat app Sign in Page',
  'About Page',
  'Calculator Application'
];

class _Assign_10State extends State<Assign_10> {
  int result = 0;
  late TextEditingController amount, rate;

  var amountError, rateError;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    amount = TextEditingController();
    rate = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment #10'),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
        ),
        body: ListView.builder(
          itemCount: buttonList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Color.fromRGBO(Random().nextInt(255),
                  Random().nextInt(255), Random().nextInt(255), 0.2),
              child: ListTile(
                title: Text(buttonList[index]),
                subtitle: Text('Tap to open the page'),
                onTap: () {
                  switch (index) {
                    case 0:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Instagram(),
                          ));
                      break;
                    case 1:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Facebook()));
                    case 2:
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatApp()));
                    case 3:
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>About()));
                    case 4:
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Calculator()));
                  }
                },
              ),
            );
          },
        ),
        /*body: ListView(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Instagram()));
                  },
                  child: Text('Instagram Sign in Page'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assign_10()));
                  },
                  child: Text('Facebook Sign in Page'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assign_10()));
                  },
                  child: Text('Chat app Sign in Page'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assign_10()));
                  },
                  child: Text('About Page'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assign_10()));
                  },
                  child: Text('Calculator Application'),
                ),
              ),
            ],
          )*/
      ),
    );
  }
}
