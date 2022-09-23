import 'package:flutter/material.dart';
import 'package:goorderz/extension/extensions.dart';

import '../../../styles/colors.dart';
import '../../../styles/styles.dart';
import '../../components/app_logo.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Selected city", style: Texts.labelGrey(context)),
        context.dynamicSizedBox(width: 0.03),
        Text("Szentes", style: Texts.titleRed(context)),
        Icon(Icons.arrow_drop_down, color: AppColors().red),
        const Spacer(),
        const AppLogo(width: 0.18),
      ],
    );
  }
}
