part of 'home_page_view.dart';

class FoodTypesWidget extends StatefulWidget {
  const FoodTypesWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FoodTypesWidget> createState() => _FoodTypesWidgetState();
}

class _FoodTypesWidgetState extends State<FoodTypesWidget> {
  List<MFoodType> foodTypes = [
    MFoodType(Icons.food_bank, "Label"),
    MFoodType(Icons.food_bank, "Label"),
    MFoodType(Icons.food_bank, "Label"),
    MFoodType(Icons.food_bank, "Label"),
    MFoodType(Icons.food_bank, "Label"),
    MFoodType(Icons.food_bank, "Label"),
  ];

  final double _circleSize = 0.18;

  int _selectedItem = 0;

  void _handleTap(index) {
    if (index == _selectedItem) return;

    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          foodTypes.length,
          (index) => _item(foodTypes[index], index),
        ),
      ),
    );
  }

  Widget _item(MFoodType foodType, int index) {
    return Padding(
      padding: CustomPadding.horizontalSmall(),
      child: InkWell(
        onTap: () => _handleTap(index),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _itemIcon(index, foodType),
            context.dynamicSizedBox(height: 0.01),
            _itemLabelText(foodType, index),
          ],
        ),
      ),
    );
  }

  Container _itemIcon(int index, MFoodType foodType) {
    return Container(
      width: _circleSize.toDynamicWidth(context),
      height: _circleSize.toDynamicWidth(context),
      decoration: BoxDecoration(
        color: _isSelected(index) ? AppColors().orange : AppColors().greyOff,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: CustomPadding.allSmall(),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Icon(
            foodType.iconData,
            color: _isSelected(index) ? AppColors().white : AppColors().black,
          ),
        ),
      ),
    );
  }

  Text _itemLabelText(MFoodType foodType, int index) {
    return Text(
      foodType.label,
      style: _isSelected(index)
          ? Texts.labelOrange(context)
          : Texts.labelGrey(context),
    );
  }

  bool _isSelected(int index) => _selectedItem == index;
}

class MFoodType {
  final IconData iconData;
  final String label;

  MFoodType(this.iconData, this.label);
}
