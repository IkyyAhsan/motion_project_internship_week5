import 'package:motion_project_internship_week5/app/data/model/post_model.dart';
import 'package:motion_project_internship_week5/app/data/model/story_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:story_view/story_view.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final storyController = StoryController();
  PostModel postModel = PostModel(
    namaAkun: 'Ikkiahsan_',
    description:
        'Laconic',
    fotoProfile: 'ikyi',
    jumlahLike: 1,
    isLike: false,
    postingGambar: 'ikyi',
    isSponsor: false,
  );

  List<StoryModel> storyModel = [];
  @override
  void onInit() {
    loadStoryModel();
    super.onInit();
  }

  void loadStoryModel() {
    storyModel = [
      StoryModel(
        image: 'ikyi',
        namaAkun: 'ikkiahsan_',
        storyItems: [
          StoryItem.text(
            title: "Siapapun pilihan anda, jangan golput ya gaiss",
            backgroundColor: Colors.blue,
          ),
          StoryItem.text(
            title: "OTW TPS",
            backgroundColor: Colors.red,
          ),
        ],
        isLoginAccount: true,
      ),
      StoryModel(
        image: 'lazu',
        namaAkun: 'mlazuardif',
        storyItems: [
          StoryItem.pageImage(
            url:
                "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Prabowo_Subianto%2C_Candidate_for_Indonesia%27s_President_in_2024.jpg/1200px-Prabowo_Subianto%2C_Candidate_for_Indonesia%27s_President_in_2024.jpg",
            caption: "Andalan gua nih boss",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'agung',
        namaAkun: 'agung.hkm',
        storyItems: [
          StoryItem.pageImage(
            url: "https://i0.wp.com/newsnesia.id/wp-content/uploads/2024/01/ad67763ae73fa1edd2e4643558c23add.jpg?resize=1050%2C700&ssl=1",
            caption: "Menang kalah sudah biasa boss",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'zam',
        namaAkun: 'imzamrud',
        storyItems: [
          StoryItem.pageImage(
            url: "https://images.bisnis.com/posts/2024/02/14/1740754/antarafoto-ganjar-mencoblos-semarang-140224-ak-2_1707881244.jpg",
            caption: "Ganjar emang the best ga ada lawan",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'ram',
        namaAkun: 'ramadhns',
        storyItems: [
          StoryItem.pageImage(
            url: "https://jernih.co/wp-content/uploads/10jokowi_.jpg",
            caption: "dedikasi yang luar biasa!!",
            controller: storyController,
          ),
        ],
      ),
      StoryModel(
        image: 'mad',
        namaAkun: 'mad.lannd',
        storyItems: [
          StoryItem.pageImage(
            url: "https://images.bisnis.com/thumb/posts/2024/02/16/1741425/nyoblos_megawati-bi-hil-21-14022024-06_1707887171.jpg?w=450&h=237",
            caption: "No Copyright Picture, my idol",
            controller: storyController,
          ),
        ],
      ),
    ];
    update();
  }

  void changeIconLike() {
    postModel.isLike = !postModel.isLike;
    if (postModel.isLike) {
      postModel.jumlahLike++;
    } else {
      postModel.jumlahLike--;
    }
    update();
  }

  void toStoryPageView(
    List<StoryItem>? storyItems,
  ) {
    Get.toNamed(Routes.SNAP_GRAM, arguments: {
      'story': storyItems,
    });
  }
}
