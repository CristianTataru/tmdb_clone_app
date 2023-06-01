import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_clone_app/feature/home/bloc/home_bloc.dart';
import 'package:tmdb_clone_app/feature/popular_movies/presentation/popular_movies_page.dart';
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
              ...homeState.map(
                loading: (state) => [
                  const Expanded(
                    child: loadingSpinner,
                  )
                ],
                loaded: (state) => [_PopularMoviesCarousel(state.popularMovies)],
              ),
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
        width: 110,
        height: 270,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TmdbImage(height: 146, width: 100, path: movie.posterPath),
            verticalMargin8,
            Text(
              movie.title,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
            ),
            verticalMargin8,
            Text(
              movie.genres.join(', '),
              style: const TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class _PopularMoviesCarousel extends StatefulWidget {
  final List<Movie> movieList;
  const _PopularMoviesCarousel(this.movieList);

  @override
  State<_PopularMoviesCarousel> createState() => _PopularMoviesCarouselState();
}

class _PopularMoviesCarouselState extends State<_PopularMoviesCarousel> {
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
