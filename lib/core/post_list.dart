import 'package:flutter/material.dart';
import 'package:instagram_clone/models/post.dart';
import 'package:instagram_clone/widget/post_card.dart';

class PostList extends StatelessWidget {
  PostList({Key key}) : super(key: key);

  List<Post> posts = [
    Post(
      profileImageURL: "https://araltasher.com/img/hiai_small.png",
      nick: "araltasher",
      postedImg: "https://setup.araltasher.com/img/setup-large.jpg",
      location: "Orlando, Florida",
      description:
          "⁣I hope you're having a great weekend and getting that well-deserved rest ",
      like: 5.235,
      comment: 48,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return PostCard(
            nickname: posts[index].nick,
            profileImageURL: posts[index].profileImageURL,
            location: posts[index].location,
            postImage: posts[index].postedImg,
            description: posts[index].description,
          );
        },
      ),
    );
  }
}
