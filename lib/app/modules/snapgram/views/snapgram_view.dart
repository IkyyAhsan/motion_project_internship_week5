import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';
import 'package:motion_project_internship_week5/app/modules/snapgram/controllers/snapgram_controller.dart';

class SnapGramView extends GetView<SnapGramController> {
  const SnapGramView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnapGramView'),
        centerTitle: true,
      ),
      body: StoryView(
        controller: controller.storyController,
        storyItems: controller.listOfStory,
        onComplete: controller.snapGramComplete ,
      )
    );
  }
}
