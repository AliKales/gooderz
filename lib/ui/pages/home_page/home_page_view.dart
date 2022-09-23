import 'package:goorderz/common_libs.dart';
import 'package:goorderz/gen/assets.gen.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../components/c_search_icon.dart';
import '../../components/c_text_field.dart';
import 'home_app_bar.dart';

part 'food_types_widget.dart';
part 'foods_widget.dart';
part 'images_widget.dart';
part 'left_rotated_sorting_widgets.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: CustomPadding.pagePadding(),
              child: const HomeAppBar(),
            ),
            context.dynamicSizedBox(height: 0.015),
            Padding(
              padding: CustomPadding.horizontalMedium(),
              child: _textFieldHomePage(),
            ),
            _spacer(),
            const ImagesWidget(),
            _spacer(),
            const FoodTypesWidget(),
            _spacer(),
            //We rotate this widget to show
            //items such as 'Popular', 'Near'
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: PaddingValues.medium.value),
                child: Row(
                  children: const [
                    LeftRotatedSortingWidgets(),
                    FoodsWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _spacer() => context.dynamicSizedBox(height: 0.02);

  CTextField _textFieldHomePage() {
    return CTextField(
      background: AppColors().white,
      text: "what are you looking for...",
      suffixIcon: const CSearchIcon(),
      prefixIcon: Icon(Icons.food_bank, color: AppColors().orange, size: 32),
    );
  }
}
