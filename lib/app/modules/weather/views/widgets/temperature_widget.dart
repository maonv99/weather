import 'package:entrance/app/common/util/exports.dart';
import 'package:entrance/app/data/models/weather_model/weather_model.dart';
import 'package:flutter/material.dart';

class TemperatureWidget extends StatelessWidget {
  final WeatherModel? weather;
  const TemperatureWidget({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            WeatherIconWidget(
              icon: weather?.weather?.first.icon,
            ),
            Text(
              weather?.weather?.first.main ?? "",
              style: AppTextStyle.regularStyle,
            ),
          ],
        ),
        const Spacer(),
        Text(
          '${weather?.main?.feelsLike?.round()}°',
          style: AppTextStyle.celsiusStyle,
        ),
      ],
    );
  }
}

class WeatherIconWidget extends StatelessWidget {
  final String? icon;
  const WeatherIconWidget({
    super.key,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    if (icon?.isNotEmpty ?? false) {
      return Image.network(
        'http://openweathermap.org/img/w/$icon.png',
        width: 60.w,
        height: 60.w,
        fit: BoxFit.fill,
      );
    }
    return const SizedBox(width: 0.0, height: 0.0);
  }
}
