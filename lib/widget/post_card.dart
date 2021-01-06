import 'package:flutter/material.dart';
import 'package:instagram_clone/widget/love_button.dart';

class PostCard extends StatelessWidget {
  final String nickname;
  final String location;
  final String description;
  final String profileImageURL;
  final String postImage;
  final double likesLenght = 0;
  final Function onTap;

  const PostCard({
    Key key,
    this.nickname,
    this.location,
    this.profileImageURL,
    this.postImage,
    this.description,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[200]),
          top: BorderSide(color: Colors.grey[200]),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 5),
          upContainerOnPost(),
          imageContainer(),
          downButtons(),
          downItemsLAD()
        ],
      ),
    );
  }

  Container downItemsLAD() {
    return Container(
      child: Column(
        children: [
          buildLikeTitle(),
          buildDesAndCommentSection(),
        ],
      ),
    );
  }

  Container buildDesAndCommentSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13, vertical: 3),
      child: RichText(
        text: TextSpan(
          text: "$nickname:  ",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(
              text: description,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }

  Container buildLikeTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 13),
      alignment: Alignment.centerLeft,
      child: Text(
        "${likesLenght.toString().replaceFirst(".0", "")} likes",
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Container downButtons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              LoveButton(),
              SizedBox(width: 15),
              Image.asset(
                'assets/icons/com.png',
                height: 25,
              ),
              SizedBox(width: 15),
              Image.asset(
                'assets/icons/send.png',
                height: 25,
              ),
            ],
          ),
          Icon(
            Icons.bookmark_border,
            size: 30,
          )
        ],
      ),
    );
  }

  Padding imageContainer() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        child: Image.network(postImage),
      ),
    );
  }

  Widget upContainerOnPost() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            imageAndNickLoc(),
            IconButton(
              icon: Icon(
                Icons.more_horiz,
                color: Colors.black,
              ),
              onPressed: onTap,
            ),
          ],
        ),
      ),
    );
  }

  Row imageAndNickLoc() {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.network(
            profileImageURL,
            height: 40,
          ),
        ),
        SizedBox(width: 10),
        Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                nickname,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                location,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(.6),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
