part of 'home_page_view.dart';

class LeftRotatedSortingWidgets extends StatefulWidget {
  const LeftRotatedSortingWidgets({
    Key? key,
  }) : super(key: key);

  @override
  State<LeftRotatedSortingWidgets> createState() =>
      _LeftRotatedSortingWidgetsState();
}

class _LeftRotatedSortingWidgetsState extends State<LeftRotatedSortingWidgets> {
  List<String> sorts = ["Featured", "Near", "Popular"];

  int _selectedSort = 0;

  void _handleOnTap(int index) {
    if (index == _selectedSort) return;

    setState(() {
      _selectedSort = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _iconSort(),
            ...List.generate(sorts.length, (index) => _item(index)),
          ],
        ),
      ),
    );
  }

  Widget _item(int index) {
    return Padding(
      padding: CustomPadding.horizontalSmall(),
      child: InkWell(
        onTap: () => _handleOnTap(index),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _widgetAboveText(index),
            _spacer(),
            _text(index),
            _spacer(),
          ],
        ),
      ),
    );
  }

  Container _widgetAboveText(int index) {
    return Container(
      height: 0.005.toDynamicHeight(context),
      width: 0.14.toDynamicWidth(context),
      decoration: BoxDecoration(
        color: _isSelected(index) ? AppColors().orange : Colors.transparent,
        borderRadius: CustomRadius.allMedium(),
      ),
    );
  }

  Text _text(int index) {
    return Text(sorts[index],
        style: _isSelected(index)
            ? Texts.labelOrange(context)
            : Texts.labelGrey(context));
  }

  SizedBox _spacer() => SizedBox(height: 0.05.toDynamicWidth(context));

  bool _isSelected(int index) => _selectedSort == index;

  Icon _iconSort() {
    return Icon(
      Icons.sort,
      color: AppColors().orange,
    );
  }
}
