import 'package:story_view/story_view.dart';
class StoryModel{
  String username, image;
  List<StoryItem>? stories;
  bool isLogin;

  StoryModel({
    required this.username,
    required this.image,
    this.stories,
    this.isLogin = false
  });
}