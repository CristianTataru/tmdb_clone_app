import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart';
import 'package:tmdb_clone_app/feature/popular_movies/presentation/popular_movies_page.dart';
import 'package:tmdb_clone_app/main.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets("See all popular movies", (tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();
    expect(find.byKey(const Key("seeAllPopularMoviesKey")), findsOneWidget);
    await tester.tap(find.byKey(const Key("seeAllPopularMoviesKey")));
    await tester.pumpAndSettle();
    expect(find.byType(PopularMoviesPage), findsOneWidget);
    await tester.drag(find.byKey(const Key("popularMoviesScrollKey")), const Offset(0, -3000));
    await tester.pumpAndSettle();
    await tester.dragUntilVisible(
        find.text("The Little Mermaid"), find.byKey(const Key("popularMoviesScrollKey")), const Offset(0, 50));
    expect(find.text("The Little Mermaid"), findsOneWidget);
  });
  testWidgets("seeMovieDetails", (tester) async {
    mockNetworkImagesFor(() async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();
      expect(find.byKey(const Key("movieEntryKey")), findsWidgets);
      await tester.tap(find.byKey(const Key("movieEntryKey")).first);
      await tester.pumpAndSettle();
      expect(find.byType(MovieDetailsPage), findsOneWidget);
      expect(find.text("Fast X"), findsNWidgets(2));
      expect(find.text("Action"), findsOneWidget);
      expect(find.text("Thriller"), findsOneWidget);
      expect(find.text("Cast & Crew"), findsOneWidget);
      expect(find.text("Videos"), findsOneWidget);
      expect(find.text("Information"), findsOneWidget);
      expect(find.text("Release Date"), findsOneWidget);
      expect(find.text("17 May 2023"), findsOneWidget);
      expect(find.byType(InfoText), findsNWidgets(5));
      expect(find.text("John Cena"), findsOneWidget);
      await tester.dragUntilVisible(
          find.text("Vin Diesel"), find.byKey(const Key("movieDetailsPageScrollKey")), const Offset(0, 50));
      await tester.dragUntilVisible(
          find.byKey(const Key("56446")), find.byKey(const Key("castCarouselScrollKey")), const Offset(20, 0));
      expect(find.byKey(const Key("56446")), findsOneWidget);
      await tester.tap(find.byKey(const Key("56446")));
      await tester.pumpAndSettle();
      expect(find.text("John Cena"), findsNWidgets(2));
      expect(find.text("23 April 1977"), findsOneWidget);
      expect(find.text("Stub Biography"), findsOneWidget);
    });
  });
}
