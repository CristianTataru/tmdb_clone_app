import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iScrollUntilCastCarousel(WidgetTester tester) async {
  await tester.dragUntilVisible(
      find.text("Vin Diesel"), find.byKey(const Key("movieDetailsPageScrollKey")), const Offset(0, 50));
}
