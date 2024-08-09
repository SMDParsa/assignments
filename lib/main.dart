import 'dart:math';

import 'package:assignments/assign_10/assign_10.dart';
import 'package:assignments/assign_9.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    // TODO: implement build
    return MaterialApp(debugShowCheckedModeBanner: false, home: InitApp());
  }
}

class InitApp extends StatelessWidget {
  const InitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class Assignments'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
                Random().nextInt(255), 0.2),
            child: ListTile(
              title: Text('Assignment #${index + 9}'),
              subtitle: Text("Code4Fun Class Assignment #${index + 9}"),
              leading: Icon(
                Icons.assignment,
                color: Colors.white,
              ),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assign_9()));
                    break;
                  case 1:
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assign_10()));
                    break;
                  default:
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        showCloseIcon: true,
                        content: Text(
                            'Assignment #${index + 9} not yet available, coming soon!')));
                }
              },
            ),
          );
        },
      ),
    );
  }
}
