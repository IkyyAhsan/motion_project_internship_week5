import 'package:get/get.dart';
import 'package:motion_project_internship_week5/app/modules/snapgram/controllers/snapgram_controller.dart';

class SnapGramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SnapGramController>(
      () => SnapGramController(),
    );
  }
}
