import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';

class TmdbImage extends StatelessWidget {
  const TmdbImage({required this.height, required this.width, required this.path, super.key});

  final double height;
  final double width;
  final String path;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 0.3,
          ),
        ),
        child: ImageFade(
          image: NetworkImage("https://image.tmdb.org/t/p/w400$path"),
          fit: BoxFit.cover,
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
        ),
      ),
    );
  }
}
