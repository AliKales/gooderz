import 'package:flutter/material.dart';
import 'package:goorderz/styles/colors.dart';

class CAppBar extends AppBar {
  CAppBar({
    super.key,
    String? title,
    Widget? titleWidget,
    VoidCallback? onBackIconClick,
    Widget? leading,
    List<Widget>? actions,
    Color? backgroundColor,
  })  : assert((leading == null || onBackIconClick == null),
            "Either 'leading' or 'onBackIconClick' must be null"),
        super(
          actions: actions,
          centerTitle: true,
          elevation: 0,
          backgroundColor: backgroundColor ?? Colors.transparent,
          title: titleWidget ??
              Text(
                title ?? "",
                style: TextStyle(color: AppColors().offWhite),
              ),
          leading: leading ?? _getBackButton(onBackIconClick),
        );

  static IconButton? _getBackButton(VoidCallback? onBackIconClick) {
    if (onBackIconClick == null) return null;
    return IconButton(
      onPressed: onBackIconClick,
      icon: const Icon(Icons.arrow_back_ios),
    );
  }
}
