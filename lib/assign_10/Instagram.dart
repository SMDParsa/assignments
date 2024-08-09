import 'package:assignments/assign_10/facebook.dart';
import 'package:flutter/material.dart';

class Instagram extends StatefulWidget {
  const Instagram({super.key});

  @override
  State<Instagram> createState() => _InstagramState();
}

class _InstagramState extends State<Instagram> {
  var amountError, rateError;
  bool showPassword = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
          ),
          body: Column(
            children: [
              Container(
                alignment: Alignment(0, -1),
                margin: EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: Text(
                  "Instagram",
                  style: TextStyle(fontFamily: 'Lobster', fontSize: 50),
                ),
              ),
              Container(
                alignment: Alignment(0, -1),
                margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white70,
                      hintText: 'User Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Container(
                alignment: Alignment(0, -1),
                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: TextField(
                  obscureText: showPassword,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon(showPassword
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                  width: double.infinity,
                  child: Text(
                    textAlign: TextAlign.right,
                    'Forgot password?',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.lightBlueAccent,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.transparent)),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Divider(),
                          margin: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        )),
                    Expanded(
                        flex: 1,
                        child: Center(
                            child: Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text(
                                  'Or',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )))),
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Divider(),
                          margin: EdgeInsets.fromLTRB(0, 5, 10, 0),
                        ))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Facebook()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 30,
                          height: 30,
                          child:
                              Image.asset('assets/images/facebook_icon.png')),
                      Container(
                          margin: EdgeInsets.all(10),
                          child: Text(
                            'Log in with Facebook',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ))
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(),
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(color: Colors.black54),
                      ),
                      Text(
                        'Sign Up.',
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ))
            ],
          )),
    );
  }
}
