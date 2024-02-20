import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:story_view/widgets/story_view.dart';

import '../controllers/snapgram_controller.dart';

class SnapgramView extends GetView<SnapgramController> {
  const SnapgramView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryView(
        storyItems: controller.listOfStory,
        controller: controller.storyController,
        onComplete: controller.onComplete,
      ),
    );
  }
}
