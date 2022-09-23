part of 'home_page_view.dart';

class FoodsWidget extends StatefulWidget {
  const FoodsWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodsWidget> createState() => _FoodsWidgetState();
}

class _FoodsWidgetState extends State<FoodsWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            10,
            (index) => _item(),
          ),
        ),
      ),
    );
  }

  Widget _item() {
    return Padding(
      padding: EdgeInsets.only(right: PaddingValues.medium.value),
      child: ClipRRect(
        borderRadius: CustomRadius.allMedium(),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors().white,
          ),
          width: 0.4.toDynamicWidth(context),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _image(),
                  Padding(
                    padding: CustomPadding.horizontalMedium(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        context.dynamicSizedBox(height: 0.01),
                        _textTitle(),
                        _textRestaurant(),
                        Row(
                          children: [
                            _textPerc(),
                            const Spacer(),
                            _icon(),
                            _textRate(),
                          ],
                        ),
                        context.dynamicSizedBox(height: 0.01),
                      ],
                    ),
                  )
                ],
              ),
              _favIcon(),
            ],
          ),
        ),
      ),
    );
  }

  Align _favIcon() {
    return Align(
      alignment: Alignment.topRight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors().white,
          borderRadius: CustomRadius.onlyBottomLeft(RadiusValues.small),
        ),
        child: Padding(
          padding: CustomPadding.allXSmall(),
          child: Icon(
            Icons.favorite,
            color: AppColors().red,
          ),
        ),
      ),
    );
  }

  Text _textRate() => Text("4.6", style: Texts.labelRed(context));

  Icon _icon() {
    return Icon(
      Icons.star,
      color: AppColors().red,
    );
  }

  Text _textPerc() => Text("30 perc", style: Texts.label(context));

  Text _textRestaurant() {
    return Text(
      "YeeLo Pizzeria",
      style: Texts.labelGrey(context),
    );
  }

  Text _textTitle() {
    return Text("Miyva Pizza", style: Texts.titleBlackBold(context));
  }

  Expanded _image() {
    return Expanded(
      child: Assets.images.pizza.image(fit: BoxFit.cover),
    );
  }
}
