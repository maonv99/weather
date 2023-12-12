import 'package:entrance/app/common/util/exports.dart';
import 'package:entrance/app/modules/weather/controllers/weather_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_text_field.dart';

class SearchCityWidget extends GetView<WeatherController> {
  const SearchCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top + 16.h,
          left: 16.w,
          right: 16.w),
      child: CustomTextField(
        hintText: Strings.searchCityName,
        controller: controller.searchController,
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
        ],
        onSubmitted: (value) {
          controller.fetchWeather();
        },
        onFocusChange: (value) {
          if (!value) {
            controller.fetchWeather();
          }
        },
      ),
    );
  }
}
