import 'package:flutter/material.dart';
import 'package:goorderz/extension/extensions.dart';

import '../../styles/colors.dart';
import '../../styles/styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedPage = 0;

  final List<_NavBarItem> _items = [
    _NavBarItem("Home", Icons.home),
    _NavBarItem("label", Icons.shopping_bag),
    _NavBarItem("label", Icons.shopping_cart),
    _NavBarItem("label", Icons.person_pin_sharp),
  ];

  void _onIconTap(int index) {
    if (_selectedPage == index) return;

    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: CustomPadding.allMedium(),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: AppColors().red,
        borderRadius: CustomRadius.allLarge(),
      ),
      child: Row(
        children: List.generate(
          _items.length,
          (index) => _item(index),
        ),
      ),
    );
  }

  Widget _item(int index) {
    _NavBarItem item = _items[index];
    return Expanded(
      child: InkWell(
        onTap: () => _onIconTap(index),
        child: _selectedPage == index ? _widgetText(item) : _widgetIcon(item),
      ),
    );
  }

  Widget _widgetText(_NavBarItem item) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          item.label,
          style: Texts.navBarStyle(context),
        ),
        context.dynamicSizedBox(height: 0.01),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors().white,
          ),
          height: 0.01.toDynamicHeight(context),
        ),
      ],
    );
  }

  Padding _widgetIcon(_NavBarItem item) {
    return Padding(
      padding: CustomPadding.verticalMedium(),
      child: Icon(
        item.iconData,
        color: AppColors().white,
        size: 27,
      ),
    );
  }
}

class _NavBarItem {
  final String label;
  final IconData iconData;

  _NavBarItem(this.label, this.iconData);
}
