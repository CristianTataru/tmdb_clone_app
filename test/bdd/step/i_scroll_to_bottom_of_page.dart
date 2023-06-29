import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iScrollToBottomOfPage(WidgetTester tester) async {
  await tester.drag(find.byKey(const Key("popularMoviesScrollKey")), const Offset(0, -3000));
}
