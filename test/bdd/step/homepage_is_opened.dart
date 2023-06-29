import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:flutter_test/flutter_test.dart';

import 'the_app_is_running.dart';

Future<void> homepageIsOpened(WidgetTester tester) async {
  await theAppIsRunning(tester);
  await iWait(tester);
}
