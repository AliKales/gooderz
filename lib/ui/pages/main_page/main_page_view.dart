import 'package:flutter/material.dart';
import 'package:goorderz/ui/pages/home_page/home_page_view.dart';

import '../../components/bottom_nav_bar.dart';

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavBar(),
      body: HomePageView(),
    );
  }
}
