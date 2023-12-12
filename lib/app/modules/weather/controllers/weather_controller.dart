import 'dart:async';

import 'package:entrance/app/common/util/exports.dart';
import 'package:entrance/app/data/models/weather_model/weather_model.dart';
import 'package:entrance/app/data/repository/api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class WeatherController extends GetxController with StateMixin<WeatherModel> {
  final ApiHelper _apiHelper = Get.find();

  final TextEditingController searchController = TextEditingController();

  String defaultCity = "Ha Noi";
  Timer? _debounce;
  @override
  void onInit() {
    fetchWeather();
    super.onInit();
  }

  fetchWeather() async {
    change(null, status: RxStatus.loading());
    final String search = searchController.text;
    String city = "";
    if (!search.isNullOrEmpty) {
      city = search;
    } else {
      city = defaultCity;
    }
    _apiHelper.getWeather(cityName: city).futureValue((value) {
      WeatherModel weatherModel = WeatherModel.fromJson(value);
      change(weatherModel, status: RxStatus.success());
    }, onError: (e) {
      change(null, status: RxStatus.error(e));
    });
  }
}
