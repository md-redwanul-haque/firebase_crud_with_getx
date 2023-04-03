import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/multipleImage/bindings/multiple_image_binding.dart';
import '../modules/multipleImage/views/multiple_image_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MULTIPLE_IMAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.MULTIPLE_IMAGE,
      page: () => const MultipleImageView(),
      binding: MultipleImageBinding(),
    ),
  ];
}
