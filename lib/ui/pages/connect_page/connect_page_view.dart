import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:goorderz/extension/extensions.dart';
import 'package:goorderz/styles/colors.dart';
import 'package:goorderz/ui/components/c_buttons.dart';
import 'package:goorderz/ui/pages/pincode_page/pincode_page_view.dart';
import 'package:goorderz/utils/custom_navigation.dart';

import '../../../styles/styles.dart';
import '../../components/app_logo.dart';

class ConnectPageView extends StatefulWidget {
  const ConnectPageView({super.key});

  @override
  State<ConnectPageView> createState() => _ConnectPageViewState();
}

class _ConnectPageViewState extends State<ConnectPageView>
    with CustomNavigation {
  final GlobalKey _key = GlobalKey();

  ///[_heightSpace] is set after build to position widget
  ///between two widgets
  double? _heightSpace;

  @override
  void initState() {
    super.initState();

    context.afterBuild(() {
      setState(() {
        _heightSpace = _key.currentContext!.size!.height;
      });
    });
  }

  void _handleOnREgister() {
    push(context, const PinCodePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors().orange,
      appBar: AppBar(
        elevation: 0,
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _topMainWidget(),
              _bottomMainWidget(),
            ],
          ),
          if (_heightSpace != null)
            _logo()
                .animate()
                .fadeIn(duration: context.mediumDuration)
                .slide(duration: context.mediumDuration),
        ],
      ),
    );
  }

  Expanded _topMainWidget() {
    return Expanded(
      flex: 2,
      child: SizedBox(
        key: _key,
      ),
    );
  }

  Expanded _bottomMainWidget() {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: CustomRadius.onlyTopRadius(RadiusValues.large),
          color: AppColors().white,
        ),
        child: Padding(
          padding: CustomPadding.horizontalLarge(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Sizes.appLogoWidth.toDynamicHeight(context) / 1.6,
              ),
              Text("More food, More choices",
                  style: Texts.titleRedBold(context)),
              const Spacer(),
              Text(
                  "Discover the best foods from your city and fast delivery to you",
                  textAlign: TextAlign.center,
                  style: Texts.titleBlackBold(context)),
              const Spacer(),
              CFilledButton(onClick: () {}, text: "LOGIN"),
              COutlinedButton(onClick: _handleOnREgister, text: "REGISTER"),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Column _logo() {
    return Column(
      children: [
        //So here we subtract half of app logo size from _heightSpace to center the AppLogo
        SizedBox(
          height:
              _heightSpace! - (Sizes.appLogoWidth.toDynamicWidth(context) / 2),
        ),
        const AppLogo(),
      ],
    );
  }
}
