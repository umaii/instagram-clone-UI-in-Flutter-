import 'dart:async';

import 'package:flutter/material.dart';

class OwnStory extends StatefulWidget {
  const OwnStory({Key key}) : super(key: key);

  @override
  _OwnStoryState createState() => _OwnStoryState();
}

class _OwnStoryState extends State<OwnStory> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: isPressedOnTheScreen ? 10000000000000 : 5),
        () => Navigator.pop(context));
  }

  bool isPressedOnTheScreen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTapDown: (details) {
          setState(() {
            isPressedOnTheScreen = true;
          });
        },
        onTapCancel: () {
          setState(() {
            isPressedOnTheScreen = false;
          });
        },
        onTapUp: (details) {
          setState(() {
            isPressedOnTheScreen = false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/story1.PNG'),
            ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: buildBody(context),
        ),
      ),
    );
  }

  Column buildBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildUPContainer(context),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Not Views yet",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  facebookShareCard(),
                  SizedBox(width: 15),
                  saveStoryCard(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container facebookShareCard() {
    return Container(
      child: Column(
        children: [
          facebookButton(),
          SizedBox(height: 3),
          Text(
            "facebook",
            style: TextStyle(color: Colors.white, fontSize: 13),
          )
        ],
      ),
    );
  }

  Container saveStoryCard() {
    return Container(
      child: Column(
        children: [
          loveButton(),
          SizedBox(height: 3),
          Text(
            "Save Story",
            style: TextStyle(color: Colors.white, fontSize: 13),
          )
        ],
      ),
    );
  }

  Container loveButton() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image.asset(
          'assets/icons/heart_fill.png',
          height: 16,
        ),
      ),
    );
  }

  Container facebookButton() {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Text(
          "f",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildUPContainer(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                'https://avatars1.githubusercontent.com/u/59066341?s=400&v=4',
                height: 40,
              ),
            ),
          ),
          Text(
            "Your Story",
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
