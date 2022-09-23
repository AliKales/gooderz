import 'package:flutter/material.dart';
import 'package:goorderz/extension/extensions.dart';
import 'package:goorderz/styles/colors.dart';

class CustomRadius {
  static Radius small() => Radius.circular(RadiusValues.small.value);
  static Radius medium() => Radius.circular(RadiusValues.medium.value);
  static Radius large() => Radius.circular(RadiusValues.large.value);

  static BorderRadius onlyBottomLeft(RadiusValues values) =>
      BorderRadius.only(bottomLeft: Radius.circular(values.value));

  static BorderRadius allMedium() =>
      BorderRadius.all(Radius.circular(RadiusValues.medium.value));

  static BorderRadius allLarge() =>
      BorderRadius.all(Radius.circular(RadiusValues.large.value));

  static BorderRadius onlyTopRadius(RadiusValues radiusValues) =>
      BorderRadius.vertical(
        top: Radius.circular(radiusValues.value),
      );
}

class CustomPadding {
  static EdgeInsets allSmall() => EdgeInsets.all(PaddingValues.small.value);
  static EdgeInsets allXSmall() => EdgeInsets.all(PaddingValues.xSmall.value);
  static EdgeInsets allMedium() => EdgeInsets.all(PaddingValues.medium.value);
  static EdgeInsets allLarge() => EdgeInsets.all(PaddingValues.large.value);

  static EdgeInsets pagePadding() {
    double value = PaddingValues.medium.value;
    return EdgeInsets.fromLTRB(value, value, value, 0);
  }

  static EdgeInsets scaffold() =>
      EdgeInsets.symmetric(horizontal: PaddingValues.medium.value);

  static EdgeInsets horizontalLarge() =>
      EdgeInsets.symmetric(horizontal: PaddingValues.large.value);

  static EdgeInsets horizontalMedium() =>
      EdgeInsets.symmetric(horizontal: PaddingValues.medium.value);

  static EdgeInsets horizontalSmall() =>
      EdgeInsets.symmetric(horizontal: PaddingValues.small.value);

  static EdgeInsets verticalLarge() =>
      EdgeInsets.symmetric(vertical: PaddingValues.large.value);

  static EdgeInsets verticalMedium() =>
      EdgeInsets.symmetric(vertical: PaddingValues.medium.value);

  static EdgeInsets pageIndicator() =>
      EdgeInsets.symmetric(vertical: PaddingValues.medium.value);

  static EdgeInsets onlyTop(PaddingValues paddingValues) =>
      EdgeInsets.only(top: paddingValues.value);
}

enum PaddingValues {
  small(10),
  xSmall(5),
  medium(14),
  large(28);

  const PaddingValues(this.value);
  final double value;
}

enum RadiusValues {
  small(8),
  medium(24),
  large(36);

  const RadiusValues(this.value);
  final double value;
}

class Texts {
  static TextStyle titleMedium(BuildContext context) =>
      context.textTheme.titleMedium!;

  static TextStyle headWhite(BuildContext context) =>
      context.textTheme.headlineSmall!.copyWith(color: AppColors().white);

  static TextStyle titleRedBold(BuildContext context) =>
      context.textTheme.titleLarge!
          .copyWith(color: AppColors().red, fontWeight: FontWeight.bold);

  static TextStyle titleRed(BuildContext context) =>
      context.textTheme.titleLarge!
          .copyWith(color: AppColors().red, fontWeight: FontWeight.normal);

  static TextStyle titleGreyBold(BuildContext context) =>
      context.textTheme.titleLarge!
          .copyWith(color: AppColors().grey, fontWeight: FontWeight.bold);

  static TextStyle titleBlackBold(BuildContext context) =>
      context.textTheme.titleLarge!
          .copyWith(color: AppColors().black, fontWeight: FontWeight.bold);

  static TextStyle headBlack(BuildContext context) =>
      context.textTheme.headlineSmall!.copyWith(color: AppColors().black);

  static TextStyle labelWhiteOff(BuildContext context) =>
      context.textTheme.labelLarge!.copyWith(color: AppColors().offWhite);

  static TextStyle labelGrey(BuildContext context) =>
      context.textTheme.labelLarge!.copyWith(color: AppColors().grey);

  static TextStyle label(BuildContext context) => context.textTheme.labelLarge!;

  static TextStyle labelOrange(BuildContext context) =>
      context.textTheme.labelLarge!.copyWith(color: AppColors().orange);

  static TextStyle labelRed(BuildContext context) =>
      context.textTheme.labelLarge!.copyWith(color: AppColors().red);

  static TextStyle buttonStyle(BuildContext context) =>
      context.textTheme.titleLarge!.copyWith(color: AppColors().offWhite);

  static TextStyle navBarStyle(BuildContext context) =>
      context.textTheme.labelLarge!.copyWith(color: AppColors().white);
}

class Sizes {
  static double get appLogoWidth => 0.3;
}
