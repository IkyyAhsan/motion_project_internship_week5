import 'package:get/get.dart';
import 'package:motion_project_internship_week5/app/modules/home/view/home_view.dart';
import 'package:motion_project_internship_week5/app/modules/snapgram/bindings/snapgram_bindings.dart';
import 'package:motion_project_internship_week5/app/modules/snapgram/views/snapgram_view.dart';
import '../modules/home/bindings/home_binding.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SNAP_GRAM,
      page: () => const SnapGramView(),
      binding: SnapGramBinding(),
    ),
  ];
}
