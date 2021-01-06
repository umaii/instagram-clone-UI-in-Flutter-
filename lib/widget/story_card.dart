import 'package:flutter/material.dart';
import 'package:instagram_clone/widget/gradient_button.dart';

class StoryCard extends StatelessWidget {
  final Color storyBorderColor1;
  final Color storyBorderColor2;
  final String imageUrl;
  final Function onTap;
  final String nickname;
  final Color nickNameColor;

  const StoryCard({
    Key key,
    this.storyBorderColor1,
    this.storyBorderColor2,
    this.imageUrl,
    this.nickname,
    this.onTap,
    this.nickNameColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          StoryButton(
            strokeWidth: 3,
            radius: 100,
            gradient: LinearGradient(
              colors: [storyBorderColor1, storyBorderColor2],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(imageUrl),
                ),
              ),
            ),
            onPressed: onTap,
          ),
          SizedBox(height: 1),
          Text(
            nickname,
            style: TextStyle(color: nickNameColor),
          )
        ],
      ),
    );
  }
}
