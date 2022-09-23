import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension EContext on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  Size get size => MediaQuery.of(this).size;

  double dynamicHeight(double percent) =>
      MediaQuery.of(this).size.height * percent;

  double dynamicWidth(double percent) =>
      MediaQuery.of(this).size.width * percent;

  Widget dynamicSizedBox({double height = 0, double width = 0}) => SizedBox(
        height: dynamicHeight(height),
        width: dynamicWidth(width),
      );

  void afterBuild(VoidCallback on) =>
      WidgetsBinding.instance.addPostFrameCallback(
        (timeStamp) => on.call(),
      );

  Duration get lowDuration => const Duration(milliseconds: 300);
  Duration get mediumDuration => const Duration(milliseconds: 700);
  Duration get normalDuration => const Duration(milliseconds: 1200);
  Duration get highDuration => const Duration(milliseconds: 2000);
}

extension EString on String {
  SvgPicture get toImage => SvgPicture.asset(this);
}

extension EGlobalKey on GlobalKey {
  Offset position() {
    RenderBox box = currentContext!.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero);

    return position;
  }
}

extension EDouble on double {
  double toDynamicHeight(BuildContext context) =>
      MediaQuery.of(context).size.height * this;
  
  double toDynamicWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * this;
}
