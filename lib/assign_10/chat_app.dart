import 'package:flutter/material.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  bool show_password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.indigo, Color.fromRGBO(114, 108, 205, 1)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Card(
          color: Color.fromRGBO(250, 250, 250, 1.0),
          shape: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          margin: EdgeInsets.only(top: 50, right: 30, left: 30, bottom: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  color: Colors.transparent,
                  height: 30,
                ),
                Image.asset(
                  'assets/images/chat_icon.jpg',
                  height: 90,
                  width: 90,
                ),
                Divider(
                  color: Colors.transparent,
                  height: 30,
                ),
                Center(
                    child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                Divider(
                  color: Colors.transparent,
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all()),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      label: Text(
                        'Name',
                        style: TextStyle(color: Colors.white),
                      ),
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.transparent,
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.indigo),
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    obscureText: show_password,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.key,
                          color: Colors.white,
                        ),
                        suffixIcon: IconButton(
                          color: Colors.white,
                          onPressed: () {
                            setState(() {
                              show_password = !show_password;
                            });
                          },
                          icon: Icon(
                            show_password
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.white,
                          ),
                        ),
                        label: Text(
                          'Password',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                Divider(
                  height: 10,
                  color: Colors.transparent,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.indigo),
                    ),
                  ),
                ),
                Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
                Container(
                  margin: EdgeInsets.only(left: 100, right: 100),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    onPressed: () {},
                    color: Color(0xffb2b5d5),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Divider(
                  height: 25,
                  color: Colors.transparent,
                ),
                Container(
                  margin: EdgeInsets.only(left: 100, right: 100),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(),
                        flex: 3,
                      ),
                      Expanded(
                          flex: 1,
                          child: Center(
                              child: Text(
                            'or',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ))),
                      Expanded(flex: 3, child: Divider())
                    ],
                  ),
                ),
                Divider(
                  height: 20,
                  color: Colors.transparent,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 50,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                elevation: 10,
                                backgroundColor: Colors.white),
                            onPressed: () {},
                            child: Text(
                              'f',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 50,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                elevation: 10,
                                backgroundColor: Colors.white),
                            child: Image.asset('assets/images/google.png')
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 50,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shadowColor: Colors.black,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(10),
                                elevation: 10,
                                backgroundColor: Colors.white),
                            child: Image.asset('assets/images/twitter.png')
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  height: 15,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Register now using',
                      style: TextStyle(color: Colors.black54),
                    ),
                    Container(
                      width: 5,
                    ),
                    Text(
                      'Email',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
