import 'package:flutter_test/flutter_test.dart';

Future<void> iTapOnWidgetAtIndex(WidgetTester tester, Type type, int index) async {
  await tester.tap(find.byType(type).at(index));
  await tester.pump();
}
