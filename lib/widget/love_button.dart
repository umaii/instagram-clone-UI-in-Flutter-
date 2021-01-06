import 'package:flutter/material.dart';

class LoveButton extends StatefulWidget {
  const LoveButton({Key key}) : super(key: key);

  @override
  _LoveButtonState createState() => _LoveButtonState();
}

class _LoveButtonState extends State<LoveButton> {
  bool isTapped = false;
  bool isTappedforSize = false;
  String defaultImg = "assets/icons/heart.png";
  String tappedImage = "assets/icons/heart_fill.png";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Image.asset(
        isTapped ? tappedImage : defaultImg,
        height: 25
      ),
    );
  }
}
