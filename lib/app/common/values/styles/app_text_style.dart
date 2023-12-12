import 'package:flutter/material.dart';
import 'package:entrance/app/common/util/exports.dart';

class AppTextStyle {
  const AppTextStyle._();

  static const TextStyle _textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: "Quicksand");

  static final TextStyle semiBoldStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle semiBoldMediumStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize18,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle celsiusStyle = TextStyle(
      fontSize: 100.sp, fontWeight: FontWeight.bold, color: Colors.white);

  static final TextStyle semiBoldBigStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize20,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle text24BoldStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize24,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle titleStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize22,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle regularStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize14,
    fontWeight: FontWeight.w400,
  );
  static final TextStyle smallStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize18,
    fontWeight: FontWeight.w300,
  );
  static final TextStyle regularBlandStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize14,
    color: AppColors.kBlackLight,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle buttonTextStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.w700,
  );

  //Phần text add

  static TextStyle conditionStyle = TextStyle(
      color: AppColors.kBlueLight,
      fontWeight: FontWeight.w500,
      fontSize: Dimens.fontSize12,
      fontFamily: "Lato");
  static TextStyle conditionNomalStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontSize: Dimens.fontSize12,
      fontFamily: "Lato");

  static final TextStyle textButtonSmallStyle = _textStyle.copyWith(
      color: Colors.white,
      fontSize: Dimens.fontSize16,
      fontWeight: FontWeight.w500);

  static final TextStyle bodyStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize18,
  );
  static final TextStyle bodySmallStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
  );
  static final TextStyle bodySmall14Style = _textStyle.copyWith(
    fontSize: Dimens.fontSize14,
  );
  static final TextStyle bodySmallDescriptionStyle = _textStyle.copyWith(
      fontSize: Dimens.fontSize12, color: AppColors.kBlackLight);

  static TextStyle bottomStyle = _textStyle.copyWith(
    fontSize: Dimens.fontSize16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle blandBodyStyle = TextStyle(
      color: AppColors.kBlackLight,
      fontWeight: FontWeight.w500,
      fontSize: Dimens.fontSize16,
      fontFamily: "Quicksand");

  static final TextStyle textDescriptionStyle = _textStyle.copyWith(
      color: Colors.black,
      fontSize: Dimens.fontSize12,
      fontWeight: FontWeight.w500);
}
