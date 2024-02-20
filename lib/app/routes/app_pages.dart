import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/snapgram/bindings/snapgram_binding.dart';
import '../modules/snapgram/views/snapgram_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SNAPGRAM,
      page: () => const SnapgramView(),
      binding: SnapgramBinding(),
    ),
  ];
}
