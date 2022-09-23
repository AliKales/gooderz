import 'package:flutter_test/flutter_test.dart';
import 'package:goorderz/main.dart';
import 'package:goorderz/ui/components/c_appbar.dart';

void main() {
  testWidgets(
    "Custom App Bar test",
    (tester) async {
      await tester.pumpWidget(const MyApp());

      var cAppbar = find.byType(CAppBar);

      expect(cAppbar, findsOneWidget);
    },
  );
}
