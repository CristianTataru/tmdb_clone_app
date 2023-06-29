import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_clone_app/di/di_container.dart';
import 'package:tmdb_clone_app/main.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  configureDependencies();
  await tester.pumpWidget(const MyApp());
}
