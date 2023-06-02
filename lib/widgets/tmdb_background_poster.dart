import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';

class TmdbBackgroundPoster extends StatelessWidget {
  const TmdbBackgroundPoster({required this.path, super.key});

  final String path;

  @override
  Widget build(BuildContext context) {
    return ImageFade(
      image: NetworkImage("https://image.tmdb.org/t/p/original$path"),
      fit: BoxFit.fitWidth,
      loadingBuilder: (context, progress, chunkEvent) => Center(
        child: CircularProgressIndicator(
          value: progress,
          color: Colors.green,
        ),
      ),
      errorBuilder: (context, error) => Container(
        color: const Color(0xFF6F6D6A),
        alignment: Alignment.center,
        child: const Icon(Icons.warning, color: Colors.black26, size: 128.0),
      ),
    );
  }
}
