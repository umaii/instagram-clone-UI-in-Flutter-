import 'package:flutter/material.dart';
import 'package:instagram_clone/models/story.dart';
import 'package:instagram_clone/widget/story_card.dart';

class StoryList extends StatelessWidget {
  StoryList({Key key,this.onTap}) : super(key: key);
  final Function onTap;

  List<Story> storys = [
    Story(
        img: "https://avatars1.githubusercontent.com/u/59066341?s=400&v=4",
        nickname: "Your Story",
        activeStory: false,
        isOwnStory: true,
        onTap: () {}),
    Story(
        img:
            "https://pbs.twimg.com/profile_images/1241324797256228864/8TXg_NTe.jpg",
        nickname: "sehabe",
        activeStory: true,
        isOwnStory: false,
        onTap: () {}),
    Story(
      img:
          "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76b7d331358e35dd2773a9%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D0%26cropX2%3D4401%26cropY1%3D0%26cropY2%3D4401",
      nickname: "zuck",
      activeStory: true,
      isOwnStory: false,
      onTap: () {},
    ),
    Story(
        img:
            "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5f47d4de7637290765bce495%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D1398%26cropX2%3D3908%26cropY1%3D594%26cropY2%3D3102",
        nickname: "elonmusk",
        activeStory: true,
        isOwnStory: false,
        onTap: () {}),
    Story(
        img:
            "https://pbs.twimg.com/profile_images/658376777258151936/-Jz8l4Rr.jpg",
        activeStory: false,
        isOwnStory: false,
        nickname: "durov",
        onTap: () {}),
    Story(
        img:
            "https://pbs.twimg.com/profile_images/472421066007015424/MHUJj15g_400x400.jpeg",
        activeStory: false,
        isOwnStory: false,
        nickname: "rkiyosaki",
        onTap: () {}),
    Story(
        img:
            "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTY2NzAyMDMwMjQzNTA1NTA0/donald_trump_photo_michael_stewartwireimage_gettyimages-169093538jpg.jpg",
        activeStory: false,
        isOwnStory: false,
        nickname: "donald",
        onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 108,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: storys.length,
          itemBuilder: (context, index) {
            return StoryCard(
              storyBorderColor1:
                  storys[index].activeStory ? Colors.pink : Colors.grey[300],
              storyBorderColor2:
                  storys[index].activeStory ? Colors.orange : Colors.grey[300],
              imageUrl: storys[index].img,
              nickname: storys[index].nickname,
              nickNameColor:
                  storys[index].activeStory ? Colors.black : Colors.grey[600],
              onTap: storys[index].isOwnStory
                  ? onTap
                  : showDifferentStories(),
            );
          },
        ),
      ),
    );
  }
  showDifferentStories() => print('story');
}
