// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart';



import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/moviedetailspage_is_opened.dart';
import './step/i_scroll_until_cast_carousel.dart';
import './step/i_scroll_until_last_cast_member.dart';
import './step/i_tap_on_last_cast_member.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';

void main() {
  group('''PersonDetailsPage''', () {
    testWidgets('''I am on MovieDetailsPage''', (tester) async {
      await moviedetailspageIsOpened(tester);
      await iScrollUntilCastCarousel(tester);
      await iScrollUntilLastCastMember(tester);
      await iTapOnLastCastMember(tester);
      await iWait(tester);
      await iSeeExactlyTexts(tester, 2, 'John Cena');
      await iSeeText(tester, '23 April 1977');
      await iSeeText(tester, 'Stub Biography');
    });
  });
}
