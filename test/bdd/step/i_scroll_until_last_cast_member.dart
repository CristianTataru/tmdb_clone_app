import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iScrollUntilLastCastMember(WidgetTester tester) async {
  await tester.dragUntilVisible(
      find.byKey(const Key("56446")), find.byKey(const Key("castCarouselScrollKey")), const Offset(20, 0));
}
