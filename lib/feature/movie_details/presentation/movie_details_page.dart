import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rate/rate.dart';
import 'package:tmdb_clone_app/feature/movie_details/bloc/movie_details_bloc.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_details.dart';
import 'package:tmdb_clone_app/theme/custom_colors.dart';
import 'package:tmdb_clone_app/widgets/common.dart';
import 'package:tmdb_clone_app/widgets/tmdb_background_poster.dart';
import 'package:tmdb_clone_app/widgets/tmdb_image.dart';

final bloc = MovieDetailsBloc();

class MovieDetailsPage extends StatefulWidget {
  const MovieDetailsPage(this.movie, {super.key});

  final Movie movie;

  @override
  State<MovieDetailsPage> createState() => _MovieDetailsPageState();
}

class _MovieDetailsPageState extends State<MovieDetailsPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(MovieDetailsEvent.onPageOpened(movie: widget.movie));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MovieDetailsBloc, MovieDetailsState>(
      bloc: bloc,
      builder: (context, movieDetailsState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 1, 13, 7),
            title: Text(widget.movie.title),
            leading: const BackButton(
              color: Colors.green,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star_border_outlined,
                    color: Colors.green,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border_outlined,
                    color: Colors.green,
                  ))
            ],
          ),
          body: movieDetailsState.map(
            loading: (state) => loadingSpinner,
            loaded: (state) => _TopSectionWidget(movie: widget.movie, movieDetails: state.movieDetails),
          ),
        );
      },
    );
  }
}

class _GenreBox extends StatelessWidget {
  const _GenreBox(this.genre);

  final String genre;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        alignment: Alignment.center,
        height: 32,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(width: 1, color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.only(right: 4, left: 4),
          child: Text(
            genre,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class _TopSectionWidget extends StatelessWidget {
  const _TopSectionWidget({required this.movie, required this.movieDetails});

  final Movie movie;
  final MovieDetails movieDetails;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 150, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: TmdbBackgroundPoster(path: movieDetails.backgroundPosterPath),
              ),
              Column(
                children: [
                  const SizedBox(height: 200),
                  Padding(
                    padding: horizontalPadding8,
                    child: Row(
                      children: [
                        TmdbImage(height: 140, width: 96, path: movie.posterPath),
                        horizontalMargin8,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                movie.title,
                                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              verticalMargin8,
                              Row(
                                children: [
                                  Rate(
                                    iconSize: 15,
                                    color: Colors.green,
                                    allowHalf: true,
                                    allowClear: true,
                                    initialValue: movie.rating / 2,
                                    readOnly: true,
                                  ),
                                  horizontalMargin8,
                                  Text(
                                    '(${movieDetails.voteCount})',
                                    style: const TextStyle(color: Colors.green),
                                  ),
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.green,
                                          size: 15,
                                        ),
                                        Text(
                                          "${movieDetails.voteAverage}",
                                          style: const TextStyle(color: Colors.green),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              verticalMargin8,
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [...movie.genres.map((genre) => _GenreBox(genre))],
                                ),
                              ),
                              verticalMargin8,
                              Text(
                                movieDetails.overview,
                                style: const TextStyle(color: Colors.grey, fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          divider,
        ],
      ),
    );
  }
}