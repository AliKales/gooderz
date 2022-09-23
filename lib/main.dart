import 'package:flutter/material.dart';
import 'package:goorderz/styles/colors.dart';
import 'package:goorderz/ui/pages/onboarding_page/onboarding_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Goorderz',
      theme: AppColors().themeData(),
      home: const OnboardingPageView(),
    );
  }
}
