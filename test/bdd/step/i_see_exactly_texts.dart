import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeExactlyTexts(
  WidgetTester tester,
  int count,
  String text,
) async {
  expect(find.text(text), findsNWidgets(count));
}
