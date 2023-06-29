import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iTapOnLastCastMember(WidgetTester tester) async {
  await tester.tap(find.byKey(const Key("56446")));
}
