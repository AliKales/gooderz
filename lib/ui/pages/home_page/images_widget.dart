part of 'home_page_view.dart';

class ImagesWidget extends StatefulWidget {
  const ImagesWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ImagesWidget> createState() => _ImagesWidgetState();
}

class _ImagesWidgetState extends State<ImagesWidget> {
  late double _width;
  late double _height;

  @override
  Widget build(BuildContext context) {
    _width = context.dynamicWidth(0.6);
    _height = 0.19.toDynamicHeight(context);
    return SizedBox(
      height: _height,
      child: ScrollSnapList(
        itemBuilder: (p0, p1) => _item(),
        itemCount: 10,
        itemSize: _width,
        onItemFocus: (p0) {},
        dynamicItemSize: true,
        padding: EdgeInsets.zero,
      ),
    );
  }

  Container _item() {
    return Container(
      height: 0.19.toDynamicHeight(context),
      width: _width,
      decoration: BoxDecoration(
        color: AppColors().grey,
        borderRadius: CustomRadius.allMedium(),
      ),
    );
  }
}
