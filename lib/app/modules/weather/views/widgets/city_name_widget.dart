import 'package:entrance/app/data/models/weather_model/weather_model.dart';
import 'package:flutter/material.dart';

import '../../../../common/util/exports.dart';

class CityNameWidget extends StatelessWidget {
  final WeatherModel? weather;
  const CityNameWidget({super.key, this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(weather?.name ?? "", style: AppTextStyle.text24BoldStyle),
        SizedBox(width: 0.0, height: 4.h),
        Text(
          '${Strings.today}, ${DateTime.now().formatDMYformatDMYHHmm}',
          style: AppTextStyle.regularStyle,
        ),
      ],
    );
  }
}
