// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart';
import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/homepage_is_opened.dart';
import 'package:bdd_widget_test/step/i_see_exactly_widgets.dart';
import './step/i_tap_on_widget_at_index.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';

void main() {
  group('''MovieDetailsPage''', () {
    testWidgets('''Open MovieDetailsPage and load data successfully''', (tester) async {
      await homepageIsOpened(tester);
      await iSeeExactlyWidgets(tester, 15, MovieEntry);
      await iTapOnWidgetAtIndex(tester, MovieEntry, 0);
      await iWait(tester);
      await iSeeExactlyTexts(tester, 2, 'Fast X');
      await iSeeText(tester, 'Action');
      await iSeeText(tester, 'Thriller');
      await iSeeText(tester, 'Cast & Crew');
      await iSeeText(tester, 'Videos');
      await iSeeText(tester, 'Information');
      await iSeeText(tester, 'Release Date');
      await iSeeText(tester, '17 May 2023');
      await iSeeExactlyWidgets(tester, 5, InfoText);
      await iSeeText(tester, 'John Cena');
    });
  });
}
