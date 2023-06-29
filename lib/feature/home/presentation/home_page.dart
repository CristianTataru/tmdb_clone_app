import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_clone_app/di/di_container.dart';
import 'package:tmdb_clone_app/feature/home/bloc/home_bloc.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/theme/custom_colors.dart';
import 'package:tmdb_clone_app/widgets/common.dart';
import 'package:tmdb_clone_app/widgets/tmdb_image.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => diContainer.get(),
      child: BlocBuilder<HomeBloc, HomeState>(
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
            body: SingleChildScrollView(
              child: Column(
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
                            context.read<HomeBloc>().add(const HomeEvent.onPopularMoviesPageOpened());
                          },
                          key: const Key("seeAllPopularMoviesKey"),
                          child: const Text(
                            "See all >",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalMargin8,
                  homeState.map(
                    loading: (state) => loadingSpinner,
                    loaded: (state) => MoviesCarousel(state.popularMovies),
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
                            context.read<HomeBloc>().add(const HomeEvent.onTrendingMoviesPageOpened());
                          },
                          child: const Text(
                            "See all >",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalMargin8,
                  homeState.map(
                    loading: (state) => loadingSpinner,
                    loaded: (state) => MoviesCarousel(state.trendingMovies),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class MovieEntry extends StatelessWidget {
  const MovieEntry({super.key, required this.movie});

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
                context.read<HomeBloc>().add(HomeEvent.onMovieTapped(movie: movie));
              },
              key: const Key("movieEntryKey"),
              child: TmdbImage(height: 146, width: 100, path: movie.posterPath),
            ),
            verticalMargin8,
            Text(
              movie.title,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            verticalMargin8,
            Text(
              movie.genres.join(', '),
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}

class MoviesCarousel extends StatefulWidget {
  final List<Movie> movieList;
  const MoviesCarousel(this.movieList, {super.key});

  @override
  State<MoviesCarousel> createState() => MoviesCarouselState();
}

class MoviesCarouselState extends State<MoviesCarousel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.movieList.map((movie) => MovieEntry(movie: movie)).toList(),
      ),
    );
  }
}
