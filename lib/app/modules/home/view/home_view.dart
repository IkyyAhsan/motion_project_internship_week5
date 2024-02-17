import 'package:iconsax/iconsax.dart';
import 'package:motion_project_internship_week5/app/shared/widget/image_story.dart';
import 'package:motion_project_internship_week5/app/shared/widget/post_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/model/story_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (context) {
      return SafeArea(
        top: true,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Image.asset('assets/images/instagram_font.png', height: 32,),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border),),
              IconButton(onPressed: (){}, icon: const Icon(Iconsax.message),),
              IconButton(onPressed: (){}, icon: const Icon(Icons.add_box_outlined),),
            ],
          ),
          bottomNavigationBar: NavigationBar(
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home',),
              NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
              NavigationDestination(icon: Icon(Icons.movie_outlined), label: 'Reels'),
              NavigationDestination(icon: Icon(Icons.shopping_bag_outlined), label: 'Shop'),
              NavigationDestination(icon: CircleAvatar(backgroundImage: AssetImage('assets/images/ikyi.png',),), label: 'Profile'),
            ],
            ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  height: 97.75,
                  child: ListView.builder(
                    itemCount: controller.storyModel.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      StoryModel data = controller.storyModel[index];
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 12,
                        ),
                        child: ImageStory(
                          
                          story: data,
                          onTap: () {
                            controller.toStoryPageView(data.storyItems );
                          },
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Post(
                  postModel: controller.postModel,
                  onPressed: controller.changeIconLike,
                ),
                const SizedBox(
                  height: 18,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
