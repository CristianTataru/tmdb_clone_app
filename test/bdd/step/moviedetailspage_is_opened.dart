import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart';

import 'i_tap_on_widget_at_index.dart';
import 'the_app_is_running.dart';

Future<void> moviedetailspageIsOpened(WidgetTester tester) async {
  await theAppIsRunning(tester);
  await iWait(tester);
  await iTapOnWidgetAtIndex(tester, MovieEntry, 0);
  await iWait(tester);
}
