import 'package:flutter/material.dart';
import 'package:goorderz/extension/extensions.dart';

import '../../styles/colors.dart';
import '../../styles/styles.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    this.width,
  }) : super(key: key);

  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _getWidth(context),
      width: _getWidth(context),
      decoration: BoxDecoration(
        color: AppColors().red,
        borderRadius: CustomRadius.allMedium(),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text("GOR", style: TextStyle(color: AppColors().white)),
        ),
      ),
    );
  }

  double _getWidth(BuildContext context) {
    if (width != null) {
      return width!.toDynamicWidth(context);
    }

    return context.dynamicWidth(Sizes.appLogoWidth);
  }
}
