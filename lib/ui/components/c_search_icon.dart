import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class CSearchIcon extends StatelessWidget {
  const CSearchIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors().orange,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.search,
          color: AppColors().white,
        ),
      ),
    );
  }
}
