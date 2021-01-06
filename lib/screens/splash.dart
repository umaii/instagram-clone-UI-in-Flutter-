import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Opacity(
                opacity: 0,
                child: Image.asset(
                  "assets/insta_logo.png",
                  height: 1,
                ),
              ),
              Image.asset(
                "assets/insta_logo.png",
                height: 85,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "from",
                    style: TextStyle(
                      color: Colors.black.withOpacity(.7),
                    ),
                  ),
                  Text(
                    "FACEBOOK",
                    style: TextStyle(
                      color: Colors.purple.withOpacity(.8),
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
