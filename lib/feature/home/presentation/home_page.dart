import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_clone_app/feature/home/bloc/home_bloc.dart';
import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart';
import 'package:tmdb_clone_app/feature/popular_movies/presentation/popular_movies_page.dart';
import 'package:tmdb_clone_app/feature/trending_movies/presentation/trending_movies_page.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/theme/custom_colors.dart';
import 'package:tmdb_clone_app/widgets/common.dart';
import 'package:tmdb_clone_app/widgets/tmdb_image.dart';

final bloc = HomeBloc();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    bloc.add(const HomeEvent.onAppStarted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      bloc: bloc,
      builder: (context, homeState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 1, 13, 7),
            title: const Text(
              "Movies",
              style: TextStyle(fontSize: 24),
            ),
          ),
          body: Column(
            children: [
              verticalMargin24,
              Padding(
                padding: horizontalPadding8,
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Popular",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const PopularMoviesPage();
                        }));
                      },
                      child: const Text(
                        "See all ❯",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              verticalMargin8,
              homeState.map(
                loading: (state) => const Expanded(child: loadingSpinner),
                loaded: (state) => _MoviesCarousel(state.popularMovies),
              ),
              divider,
              verticalMargin8,
              Padding(
                padding: horizontalPadding8,
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Trending",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                          return const TrendingMoviesPage();
                        }));
                      },
                      child: const Text(
                        "See all ❯",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              verticalMargin8,
              homeState.map(
                loading: (state) => const Expanded(child: loadingSpinner),
                loaded: (state) => _MoviesCarousel(state.trendingMovies),
              )
            ],
          ),
        );
      },
    );
  }
}

class _MovieEntry extends StatelessWidget {
  const _MovieEntry({required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: allPadding8,
      child: SizedBox(
        width: 104,
        height: 216,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return MovieDetailsPage(movie);
                }));
              },
              child: TmdbImage(height: 146, width: 100, path: movie.posterPath),
            ),
            verticalMargin8,
            Text(
              movie.title,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
            ),
            verticalMargin8,
            Text(
              movie.genres.join(', '),
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}

class _MoviesCarousel extends StatefulWidget {
  final List<Movie> movieList;
  const _MoviesCarousel(this.movieList);

  @override
  State<_MoviesCarousel> createState() => _MoviesCarouselState();
}

class _MoviesCarouselState extends State<_MoviesCarousel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.movieList.map((movie) => _MovieEntry(movie: movie)).toList(),
      ),
    );
  }
}
