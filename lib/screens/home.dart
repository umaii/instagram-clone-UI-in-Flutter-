import 'package:flutter/material.dart';
import 'package:instagram_clone/core/post_list.dart';
import 'package:instagram_clone/core/story_list.dart';
import 'package:instagram_clone/screens/own_story.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 10),
            StoryList(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OwnStory(),
                ),
              ),
            ),
            SizedBox(height: 20),
            PostList(),
          ],
        ),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black.withOpacity(.5),
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          title: Text("Add"),
        ),
        BottomNavigationBarItem(
          icon: ClipRRect(
            child: Image.network(
              "https://avatars1.githubusercontent.com/u/59066341?s=400&v=4",
              height: 25,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          title: Text("Profile"),
        ),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: Container(
        child: Image.asset(
          "assets/insta_title.png",
          height: 60,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Image.asset("assets/ms.png"),
        ),
      ],
    );
  }
}
