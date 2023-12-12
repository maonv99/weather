import 'package:flutter/material.dart';

import '../../../../common/util/exports.dart';

class WeatherRow extends StatelessWidget {
  final IconData logo;
  final String name;
  final String value;

  const WeatherRow({
    super.key,
    required this.logo,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(12.w),
          decoration: BoxDecoration(
              color: AppColors.kBlackDot.withOpacity(0.6),
              shape: BoxShape.circle),
          child: Icon(logo),
        ),
        SizedBox(width: 16.w, height: 0.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name,
              style:
                  AppTextStyle.regularBlandStyle.copyWith(color: Colors.black),
            ),
            SizedBox(width: 0.0, height: 4.h),
            Text(
              value,
              style: AppTextStyle.semiBoldMediumStyle
                  .copyWith(color: Colors.black),
            ),
          ],
        )
      ],
    );
  }
}
