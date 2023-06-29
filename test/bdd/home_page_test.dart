// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart';
import 'package:tmdb_clone_app/feature/popular_movies/presentation/popular_movies_page.dart';
import 'package:tmdb_clone_app/feature/home/presentation/home_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import './step/i_see_exactly_texts.dart';
import 'package:bdd_widget_test/step/i_see_exactly_widgets.dart';

void main() {
  group('''HomePage''', () {
    testWidgets('''Load HomePage data successfully''', (tester) async {
      await theAppIsRunning(tester);
      await iWait(tester);
      await iSeeExactlyTexts(tester, 2, 'See all >');
      await iSeeExactlyWidgets(tester, 2, MoviesCarousel);
    });
  });
}
