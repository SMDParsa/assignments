import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Facebook extends StatefulWidget {
  const Facebook({super.key});

  @override
  State<Facebook> createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:
          SystemUiOverlayStyle(statusBarColor: Color.fromRGBO(5, 61, 135, 1)),
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                'assets/images/fb_signin.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 30,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Phone number or email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)))),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)))),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: 40,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.indigo,
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            GestureDetector(
              child: Center(
                  child: Text(
                'Forgot Password?',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Divider(
              height: 20,
              color: Colors.transparent,
            ),
            GestureDetector(
              child: Center(
                  child: Text(
                'Back',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(
              color: Colors.transparent,
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                        child: Divider(),
                        margin: EdgeInsets.only(
                          left: 50,
                        ))),
                Expanded(
                    flex: 1,
                    child: Center(
                        child: Container(
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
                        child: Divider(), margin: EdgeInsets.only(right: 50)))
              ],
            ),
            Divider(
              color: Colors.transparent,
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: MaterialButton(
                onPressed: () {},
                shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                color: Color.fromRGBO(184, 208, 243, 1.0),
                child: Text(
                  'Create new account',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
