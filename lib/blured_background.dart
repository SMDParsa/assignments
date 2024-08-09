import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BlurredApp(),
  ));
}

class BlurredApp extends StatefulWidget {
  const BlurredApp({super.key});

  @override
  State<BlurredApp> createState() => _BlurredAppState();
}

class _BlurredAppState extends State<BlurredApp> {
  List<NetworkInfo> networkList = [
    NetworkInfo('Etisalat', 'assets/images/chat_icon.jpg', Colors.green,
        '*123#', '*125*', '*1010*'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            itemCount: networkList.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.all(20),
                color: Colors.black.withOpacity(0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      height: 200,
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        child: IconButton(
                                          splashColor: networkList[index].netColor,
                                            color:
                                                Colors.white.withOpacity(0.3),
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.more_vert,
                                              color:
                                                  networkList[index].netColor,
                                            )),
                                      )),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(40),
                                      child: Container(
                                          height: 70,
                                          width: 70,
                                          child: Image.asset(
                                            networkList[index].netIcon,
                                          ))),
                                )
                              ]),
                        ],
                      ),
                      decoration:
                          new BoxDecoration(color: Colors.black.withOpacity(0)),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

class NetworkInfo {
  var netName;
  var netIcon;
  var netColor;
  var netAmount;
  var netShareCredit;
  var netShareMb;

  NetworkInfo(this.netName, this.netIcon, this.netColor, this.netAmount,
      this.netShareCredit, this.netShareMb);
}
