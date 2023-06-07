import 'package:flutter/material.dart';

class CastPicture extends StatelessWidget {
  const CastPicture({required this.path, super.key});

  final String? path;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40.5,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 40,
        backgroundImage: NetworkImage("https://image.tmdb.org/t/p/w400$path"),
        backgroundColor: Colors.black,
        child: path == null
            ? const Icon(
                Icons.person_rounded,
                size: 70,
                color: Colors.grey,
              )
            : null,
      ),
    );
  }
}
