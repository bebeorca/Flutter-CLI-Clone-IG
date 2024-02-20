import 'package:clone_ig/app/data/model/post_model.dart';
import 'package:clone_ig/app/data/model/story_model.dart';
import 'package:clone_ig/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';

class HomeController extends GetxController {
  final storyController = StoryController();

  List<PostModel> models = [
    PostModel(
      profilepic: "exported_1.jpg",
      username: "winner",
      postings: "exported_2.jpg",
      likesCount: 49747461,
      description: "Satu putaran.",
      isLiked: true,
      isSponsored: true,
    ),
    PostModel(
      profilepic: "exported_2.jpg",
      username: "winnervice",
      postings: "exported_1.jpg",
      likesCount: 49747461,
      description: "Satu putaran.",
      isLiked: true,
    ),
    PostModel(
      profilepic: "l_1.jpg",
      username: "notfound",
      postings: "l_3.jpg",
      likesCount: 0,
      description: "Help",
      isLiked: false,
    ),
    PostModel(
      profilepic: "l_3.jpg",
      username: "puppet",
      postings: "l_1.jpg",
      likesCount: 0,
      description: "Yakin?",
      isLiked: false,
    ),
  ];

  List<StoryModel> stories = [];
  @override
  void onInit() {
    loadStoryModel();
    super.onInit();
  }

  void loadStoryModel() {
    stories = [
      StoryModel(
        isLogin: true,
        username: "winner",
        image: "exported_1.jpg",
        stories: [
          StoryItem.text(
            title: "gimana?",
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      StoryModel(
        username: "notfound1",
        image: "l_1.jpg",
        stories: [
          StoryItem.pageImage(
            url: "https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif",
            caption: "Working with gifs",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        username: "puppet",
        image: "l_3.jpg",
        stories: [],
      ),
    ];
    update();
  }

  void like(int index) {
    models[index].isLiked = !models[index].isLiked;
    if (models[index].isLiked) {
      models[index].likesCount++;
    } else {
      models[index].likesCount--;
    }
    update();
  }

  void makeStory(List<StoryItem>? storyItem) {
    Get.toNamed(
      Routes.SNAPGRAM,
      arguments: {
        'story': storyItem,
      },
    );
  }
}
