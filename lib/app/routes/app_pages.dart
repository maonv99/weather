import 'package:get/get.dart';
import '../modules/weather/bindings/weather_binding.dart';
import '../modules/weather/views/weather_view.dart';
part 'app_routes.dart';

class AppPages {
  const AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.weather,
      transition: Transition.rightToLeftWithFade,
      page: () => const WeatherView(),
      binding: WeatherBinding(),
    ),
  ];
}
