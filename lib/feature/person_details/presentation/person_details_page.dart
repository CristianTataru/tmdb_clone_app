import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:tmdb_clone_app/feature/person_details/bloc/person_details_bloc.dart';
import 'package:tmdb_clone_app/models/person.dart';
import 'package:tmdb_clone_app/models/person_details.dart';

import 'package:tmdb_clone_app/theme/custom_colors.dart';
import 'package:tmdb_clone_app/widgets/cast_picture.dart';
import 'package:tmdb_clone_app/widgets/common.dart';

final bloc = PersonDetailsBloc();

class PersonDetailsPage extends StatefulWidget {
  const PersonDetailsPage(this.person, {super.key});

  final Person person;

  @override
  State<PersonDetailsPage> createState() => _PersonDetailsPageState();
}

class _PersonDetailsPageState extends State<PersonDetailsPage> {
  @override
  void initState() {
    super.initState();
    bloc.add(PersonDetailsEvent.onPageOpened(person: widget.person));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PersonDetailsBloc, PersonDetailsState>(
      bloc: bloc,
      builder: (context, personDetailsState) {
        return Scaffold(
          backgroundColor: CustomColors.background,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 1, 13, 7),
            title: Text(widget.person.name),
            leading: const BackButton(
              color: Colors.green,
            ),
          ),
          body: personDetailsState.map(
              loading: (state) => loadingSpinner,
              loaded: (state) => SingleChildScrollView(
                    child: Padding(
                      padding: horizontalPadding12,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalMargin32,
                          PersonDetailsEntry(person: widget.person, personDetails: state.personDetails),
                          verticalMargin8,
                          divider,
                          verticalMargin12,
                          Visibility(
                            visible: state.personDetails.biography != '',
                            child: const Text(
                              "Biography",
                              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          verticalMargin8,
                          Text(
                            "${state.personDetails.biography}",
                            style: const TextStyle(color: Colors.grey, fontSize: 13),
                          )
                        ],
                      ),
                    ),
                  )),
        );
      },
    );
  }
}

class PersonDetailsEntry extends StatelessWidget {
  const PersonDetailsEntry({required this.person, required this.personDetails, super.key});

  final Person person;
  final PersonDetails personDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (person.photoPath != null) CastPoster(path: person.photoPath!),
        if (person.photoPath == null)
          CastAvatar(
            path: person.photoPath,
            outerRadius: 50.5,
            innerRadius: 50,
            iconSize: 90,
          ),
        horizontalMargin12,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalMargin12,
            Text(
              person.name,
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
            if (personDetails.knownFor != null) ...[
              verticalMargin8,
              const Text(
                "known for",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                personDetails.knownFor!,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
            if (personDetails.birthPlace != null) ...[
              verticalMargin8,
              const Text(
                "Birthplace",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                personDetails.birthPlace!,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
            if (personDetails.birthday != null) ...[
              verticalMargin8,
              const Text(
                "Date of Birth",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                DateFormat('dd MMMM yyyy').format(DateTime.parse(personDetails.birthday!)),
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
            if (personDetails.deathday != null) ...[
              verticalMargin8,
              const Text(
                "Date of Death",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                DateFormat('dd MMMM yyyy').format(DateTime.parse(personDetails.deathday!)),
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ],
        )
      ],
    );
  }
}
