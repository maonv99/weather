import 'package:entrance/app/data/models/weather_model/weather_model.dart';
import 'package:entrance/app/modules/weather/controllers/weather_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/custom_error_widget.dart';
import '../../widgets/custom_loading_widget.dart';
import 'widgets/exports.dart';

class WeatherView extends GetView<WeatherController> {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFF13174E),
        body: Column(
          children: <Widget>[
            const SearchCityWidget(),
            Expanded(
              child: controller.obx(
                (state) {
                  final WeatherModel? weather = state;
                  return Column(
                    children: [
                      WeatherInfoWidget(weather: weather),
                      WeatherDetailWidget(weather: weather)
                    ],
                  );
                },
                onError: (e) => CustomErrorWidget(e: e.toString()),
                onLoading: const CustomLoadingWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
