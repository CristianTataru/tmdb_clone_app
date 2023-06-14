import 'package:flutter/material.dart';
import 'package:tmdb_clone_app/widgets/tmdb_image.dart';

class CastAvatar extends StatelessWidget {
  const CastAvatar({
    required this.path,
    required this.outerRadius,
    required this.innerRadius,
    required this.iconSize,
    super.key,
  });

  final String? path;
  final double outerRadius;
  final double innerRadius;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: outerRadius,
      backgroundColor: Colors.white,
      child: path == null
          ? CircleAvatar(
              radius: innerRadius,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.person_rounded,
                size: iconSize,
                color: Colors.grey,
              ),
            )
          : CircleAvatar(
              radius: innerRadius,
              backgroundImage: NetworkImage("https://image.tmdb.org/t/p/w400$path"),
              backgroundColor: Colors.black,
            ),
    );
  }
}

class CastPoster extends StatelessWidget {
  const CastPoster({required this.path, super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      width: 128,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.white),
          borderRadius: const BorderRadius.all(Radius.circular(16))),
      child: ClipRRect(borderRadius: BorderRadius.circular(16), child: TmdbImage(height: 192, width: 128, path: path)),
    );
  }
}
