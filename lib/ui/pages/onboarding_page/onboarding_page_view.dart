import 'package:flutter/material.dart';
import 'package:goorderz/extension/extensions.dart';
import 'package:goorderz/gen/assets.gen.dart';
import 'package:goorderz/styles/colors.dart';
import 'package:goorderz/styles/styles.dart';
import 'package:goorderz/ui/components/app_logo.dart';
import 'package:goorderz/ui/components/c_buttons.dart';
import 'package:goorderz/ui/pages/connect_page/connect_page_view.dart';
import 'package:goorderz/ui/pages/main_page/main_page_view.dart';
import 'package:goorderz/utils/custom_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/button_bottom.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key});

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView>
    with CustomNavigation {
  final PageController _pageController = PageController();

  List<String> svgs = [
    Assets.svg.barbecue.path,
    Assets.svg.eatingTogether.path,
    Assets.svg.onlineGroceries.path,
  ];

  void _handleOnStart() {
    pushReplace(context, const ConnectPageView());
  }

  void _handleSkip() {
    pushReplace(context, const MainPageView());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      //here we set 'backgroundColor' manually because
      //we want this page to be orange according to design
      backgroundColor: AppColors().orange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Headline and label text
            _partTexts(),
            //Images with Page Indicator, Button on bottom
            _partImages(),
          ],
        ),
      ),
    );
  }

  Expanded _partImages() {
    return Expanded(
      flex: 4,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors().offOrange,
          borderRadius: CustomRadius.onlyTopRadius(RadiusValues.large),
        ),
        child: Column(
          children: [
            //Smooth Page Indicator with ExpandingDots Effect
            Padding(
              padding: CustomPadding.pageIndicator(),
              child: SmoothPageIndicator(
                controller: _pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  activeDotColor: AppColors().black,
                  dotHeight: 4,
                  dotWidth: 5,
                ),
              ),
            ),
            //Page view builder to show images
            Expanded(
              child: Padding(
                padding: CustomPadding.verticalLarge(),
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: svgs.length,
                  itemBuilder: (context, index) => svgs[index].toImage,
                ),
              ),
            ),
            //Button on Very Bottom
            ButtonBottom(
              onClick: _handleOnStart,
              text: "Get Started",
            ),
          ],
        ),
      ),
    );
  }

  Expanded _partTexts() {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: CustomPadding.horizontalLarge(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            //Headline
            Text(
              "Delivery to Your Door",
              style: Texts.headWhite(context),
            ),
            const Spacer(),
            //Label
            Text(
              "With this professional delivery staff, Das'Min will serve you the most professional way with the best quality",
              style: Texts.labelWhiteOff(context),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const AppLogo(width: 0.14),
      actions: [
        _skipButton(context),
      ],
    );
  }

  CTextButton _skipButton(BuildContext context) {
    return CTextButton(
      onClick: _handleSkip,
      text: "Skip",
    );
  }
}
