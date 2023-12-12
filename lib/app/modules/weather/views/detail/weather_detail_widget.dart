import 'package:entrance/app/common/util/exports.dart';
import 'package:entrance/app/data/models/weather_model/weather_model.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_container.dart';
import '../widgets/exports.dart';

class WeatherDetailWidget extends StatelessWidget {
  final WeatherModel? weather;
  const WeatherDetailWidget({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(Strings.weatherNow,
              style: AppTextStyle.semiBoldMediumStyle
                  .copyWith(color: Colors.black)),
          SizedBox(width: 0.0, height: 24.h),
          Row(
            children: [
              WeatherRow(
                logo: Icons.thermostat,
                name: Strings.minTemp,
                value: '${weather?.main?.tempMin?.round()}°',
              ),
              const Spacer(),
              WeatherRow(
                logo: Icons.thermostat,
                name: Strings.maxTemp,
                value: '${weather?.main?.tempMax?.round()}°',
              ),
            ],
          ),
          SizedBox(width: 0.0, height: 16.h),
          Row(
            children: [
              WeatherRow(
                logo: Icons.speed,
                name: Strings.windSpeed,
                value: '${weather?.wind?.speed?.round()} m/s',
              ),
              const Spacer(),
              WeatherRow(
                logo: Icons.opacity,
                name: Strings.humidity,
                value: '${weather?.main?.humidity?.round()}%',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
