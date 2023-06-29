import 'package:flutter_test/flutter_test.dart';

Future<void> iTapOnTextAtIndex(WidgetTester tester, String text, int index) async {
  await tester.tap(find.text(text).at(index));
  await tester.pump();
}
