import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_clone_app/bloc/tmdb_bloc.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/theme/custom_colors.dart';
import 'package:tmdb_clone_app/widgets/common.dart';

final bloc = TmdbBloc();

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    bloc.add(const TmdbEvent.onAppStarted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TmdbBloc, TmdbState>(
      bloc: bloc,
      builder: (context, tmdbState) {
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
                      child: const Text(
                        "See all >",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              verticalMargin8,
              ...tmdbState.map(
                loading: (state) => [
                  const Expanded(
                    child: loadingSpinner,
                  )
                ],
                loaded: (state) => [_PopularMoviesCarousel(state.movies)],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PopularMoviesCarousel extends StatefulWidget {
  final List<Movie> movieList;
  const _PopularMoviesCarousel(this.movieList, {super.key});

  @override
  State<_PopularMoviesCarousel> createState() => __PopularMoviesCarouselState();
}

class __PopularMoviesCarouselState extends State<_PopularMoviesCarousel> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: widget.movieList
            .map(
              (e) => Padding(
                padding: allPadding8,
                child: SizedBox(
                  width: 110,
                  height: 270,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 0.3,
                            ),
                          ),
                          child: TmdbImage(e.posterPath)),
                      verticalMargin8,
                      Text(
                        e.title,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      verticalMargin8,
                      Text(
                        e.genres.join(', '),
                        style: const TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
