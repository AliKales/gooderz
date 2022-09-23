import 'package:flutter/material.dart';
import 'package:goorderz/extension/extensions.dart';
import 'package:goorderz/styles/styles.dart';

import '../../styles/colors.dart';

class ButtonBottom extends StatelessWidget {
  const ButtonBottom({
    Key? key,
    required this.onClick,
    required this.text,
    this.backgroundColor,
  }) : super(key: key);

  final VoidCallback onClick;
  final String text;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: context.dynamicHeight(0.10),
        color: backgroundColor ?? Colors.transparent,
        child: Container(
          alignment: Alignment.center,
          width: double.maxFinite,
          height: context.dynamicHeight(0.10),
          decoration: BoxDecoration(
            color: AppColors().red,
            borderRadius: BorderRadius.vertical(top: CustomRadius.large()),
          ),
          child: Text(
            text.toUpperCase(),
            style: Texts.buttonStyle(context),
          ),
        ),
      ),
    );
  }
}
