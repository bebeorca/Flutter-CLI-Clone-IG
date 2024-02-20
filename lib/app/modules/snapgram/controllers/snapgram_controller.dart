import 'package:get/get.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/widgets/story_view.dart';

class SnapgramController extends GetxController {
  final storyController = StoryController();
  List<StoryItem> listOfStory = Get.arguments['story'];
  void onComplete() {
    Get.back();
  }
}
