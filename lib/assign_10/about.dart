import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  List userList = [
    'AbdulSamad',
    '27/3/xxxx',
    '0785287051',
    '@SMDParsa',
    'ap.smdsoft@gmail.com',
    'Password'
  ];

  List iconList = [
    Icons.person,
    Icons.perm_contact_calendar_rounded,
    Icons.phone_android,
    Icons.facebook,
    Icons.email,
    Icons.visibility
  ];

  var gradientEnd = Color.fromRGBO(84, 0, 140, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: BoxClipper(),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.indigo, gradientEnd],
                        begin: Alignment.topLeft,
                        end: Alignment.center),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ))),
              Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Center(
                      child: Text(
                    'AbdulSamad',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ))),
              Container(
                height: 130,
                width: double.infinity,
                margin: EdgeInsets.only(top: 120),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.black,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(10),
                      elevation: 5,
                      backgroundColor: Colors.white),
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                              colors: [Colors.indigo, gradientEnd],
                              begin: Alignment.centerLeft,
                              end: Alignment.center)
                          .createShader(bounds);
                    },
                    child: Icon(
                      Icons.person,
                      size: 120,
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: userList.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 1,
                              child: Icon(
                            iconList[index],
                            color: gradientEnd,
                          )),
                          Expanded(
                            flex: 2,
                              child: Text(
                            userList[index],
                            style: TextStyle(
                                fontSize: 17,
                                color: Color.fromRGBO(100, 100, 100, 1.0)),
                          )),
                          IconButton(
                            color: Color.fromRGBO(100, 100, 100, 1.0),
                            icon: Icon(index == 5 ? Icons.restart_alt : null),
                            onPressed: index == 5 ? () {} : null,
                          )
                        ],
                      ),
                    ),
                    Divider()
                  ],
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              gradient: LinearGradient(
                  colors: [Colors.indigo, gradientEnd],
                  begin: Alignment.centerLeft,
                  end: Alignment.center),
            ),
            margin: EdgeInsets.only(bottom: 30),
            child: MaterialButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BoxClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
