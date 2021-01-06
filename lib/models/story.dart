class Story {
  String img;
  String nickname;
  bool activeStory = false;
  bool isOwnStory = false;
  Function onTap;

  Story({
    this.img,
    this.activeStory,
    this.isOwnStory,
    this.nickname,
    this.onTap,
  });
}
