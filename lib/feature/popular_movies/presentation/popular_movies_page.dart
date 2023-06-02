import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tmdb_clone_app/feature/movie_details/presentation/movie_details_page.dart';
import 'package:tmdb_clone_app/feature/popular_movies/bloc/popular_movies_bloc.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/theme/custom_colors.dart';
import 'package:tmdb_clone_app/widgets/common.dart';
import 'package:rate/rate.dart';
import 'package:tmdb_clone_app/widgets/tmdb_image.dart';

final bloc = PopularMoviesBloc();

class PopularMoviesPage extends StatefulWidget {
  const PopularMoviesPage({super.key});

  @override
  State<PopularMoviesPage> createState() => _PopularMoviesPageState();
}

class _PopularMoviesPageState extends State<PopularMoviesPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(const PopularMoviesEvent.onPageOpened());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PopularMoviesBloc, PopularMoviesState>(
      bloc: bloc,
      builder: (context, tmdbState) {
        return Scaffold(
            backgroundColor: CustomColors.background,
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 1, 13, 7),
              title: const Text("Popular", style: TextStyle(fontSize: 24)),
              leading: const BackButton(color: Colors.green),
            ),
            body: tmdbState.map(
              loading: (state) => loadingSpinner,
              loaded: (state) => _MovieList(movies: state.movies),
              moreLoading: (state) => _MovieList(movies: state.movies, showSpinner: true),
            ));
      },
    );
  }
}

class _MovieList extends StatefulWidget {
  const _MovieList({required this.movies, this.showSpinner = false});

  final List<Movie> movies;
  final bool showSpinner;

  @override
  State<_MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<_MovieList> {
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        bloc.add(const PopularMoviesEvent.onMoreDataLoading());
      }
    });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          ...widget.movies.map((movie) => _MovieListItem(movie)),
          if (widget.showSpinner) const SizedBox(height: 96, child: loadingSpinner) else const SizedBox(height: 96)
        ],
      ),
    );
  }
}

class _MovieListItem extends StatelessWidget {
  const _MovieListItem(this.movie);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: allPadding8,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return MovieDetailsPage(movie);
          }));
        },
        child: Row(
          children: [
            TmdbImage(
              height: 96,
              width: 64,
              path: movie.posterPath,
            ),
            horizontalMargin8,
            Expanded(
              child: SizedBox(
                height: 96,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalMargin8,
                    Text(
                      movie.title,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
                      overflow: TextOverflow.ellipsis,
                    ),
                    verticalMargin4,
                    Text(
                      movie.genres.join(', '),
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          children: [
                            Rate(
                              iconSize: 20,
                              color: Colors.green,
                              allowHalf: true,
                              allowClear: true,
                              initialValue: movie.rating / 2,
                              readOnly: true,
                            ),
                            horizontalMargin8,
                            Text(
                              '(${movie.voteCount})',
                              style: const TextStyle(color: Colors.green),
                            )
                          ],
                        ),
                      ),
                    ),
                    verticalMargin8,
                  ],
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
