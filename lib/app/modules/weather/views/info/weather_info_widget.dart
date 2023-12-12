import 'package:entrance/app/common/util/exports.dart';
import 'package:entrance/app/data/models/weather_model/weather_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/weather_controller.dart';
import '../widgets/exports.dart';

class WeatherInfoWidget extends GetView<WeatherController> {
  final WeatherModel? weather;
  const WeatherInfoWidget({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          controller.fetchWeather();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CityNameWidget(weather: weather),
              SizedBox(width: 0.0, height: 16.h),
              TemperatureWidget(weather: weather),
              SizedBox(height: 80.h),
              const WeatherImageWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
