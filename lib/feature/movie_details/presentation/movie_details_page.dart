import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:rate/rate.dart';
import 'package:tmdb_clone_app/feature/movie_details/bloc/movie_details_bloc.dart';
import 'package:tmdb_clone_app/models/movie.dart';
import 'package:tmdb_clone_app/models/movie_details.dart';
import 'package:tmdb_clone_app/models/movie_video.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/models/spoken_language.dart';
import 'package:tmdb_clone_app/theme/custom_colors.dart';
import 'package:tmdb_clone_app/utility/utils.dart';
import 'package:tmdb_clone_app/widgets/cast_picture.dart';
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

  RegExp regex = RegExp(r'([.]*0)(?!.*\d)');

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
            loaded: (state) => SingleChildScrollView(
              child: Column(
                children: [
                  _TopSectionWidget(movie: widget.movie, movieDetails: state.movieDetails),
                  divider,
                  verticalMargin8,
                  Padding(
                    padding: horizontalPadding8,
                    child: Row(
                      children: [
                        const Expanded(
                          child: Text(
                            "Cast & Crew",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "See all ❯",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  verticalMargin8,
                  _CastCarousel(state.cast.length > 1 ? state.cast.sublist(0, 15) : state.cast),
                  divider,
                  verticalMargin8,
                  const _SectionTitle(title: "Videos", size: 18),
                  verticalMargin8,
                  _TrailersCarousel(trailers: state.trailers),
                  divider,
                  verticalMargin8,
                  const _SectionTitle(title: "Information", size: 16),
                  verticalMargin8,
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _InfoText(title: "Release Date", info: [
                              DateFormat('dd MMMM yyyy').format(DateTime.parse(state.movieDetails.releaseDate))
                            ]),
                            _InfoText(
                                title: "Language",
                                info: state.movieDetails.spokenLanguages.contains(const SpokenLanguage(name: "English"))
                                    ? ["English"]
                                    : [state.movieDetails.spokenLanguages.first.name]),
                            _InfoText(
                                title: "Budget", info: ["\$${state.movieDetails.budget.toMillionString()} Million"]),
                            _InfoText(
                                title: "Revenue", info: ["\$${state.movieDetails.revenue.toMillionString()} Million"]),
                            _InfoText(
                                title: "Production Companies",
                                info: state.movieDetails.productionCompanies.map((e) => e.name).toList())
                          ],
                        ),
                      ),
                      horizontalMargin72
                    ],
                  )
                ],
              ),
            ),
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
    return Column(
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
      ],
    );
  }
}

class _PersonEntry extends StatelessWidget {
  const _PersonEntry({required this.person});

  final Person person;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {},
            child: CastPicture(path: person.photoPath),
          ),
          verticalMargin8,
          Text(
            person.name,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14),
          ),
          Text(
            person.character,
            style: const TextStyle(color: Colors.grey, fontSize: 12),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}

class _CastCarousel extends StatelessWidget {
  final List<Person> cast;
  const _CastCarousel(this.cast);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: cast.map((person) => _PersonEntry(person: person)).toList(),
      ),
    );
  }
}

class _TrailerEntry extends StatelessWidget {
  const _TrailerEntry({required this.trailer});

  final MovieVideo trailer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Utils.openLink(url: 'https://www.youtube.com/watch?v=${trailer.key}');
        },
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
              ),
              height: 96,
              width: 168,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 60, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.network(
                  'https://img.youtube.com/vi/${trailer.key}/0.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Container(
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(3)),
                height: 15,
                width: 20,
                child: const Align(
                  alignment: Alignment.center,
                  child: FaIcon(
                    FontAwesomeIcons.youtube,
                    color: Colors.red,
                    size: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _TrailersCarousel extends StatelessWidget {
  const _TrailersCarousel({required this.trailers});

  final List<MovieVideo> trailers;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: trailers.map((trailer) => _TrailerEntry(trailer: trailer)).toList(),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title, required this.size});

  final String title;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding8,
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: size),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class _InfoText extends StatelessWidget {
  const _InfoText({required this.title, required this.info});

  final String title;
  final List<String> info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: verticalPadding1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          horizontalMargin4,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...info.map((e) => Text(
                      e,
                      style: const TextStyle(color: Colors.grey),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
