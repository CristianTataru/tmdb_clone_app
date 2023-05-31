import 'package:flutter/material.dart';
import 'package:image_fade/image_fade.dart';

// Common Widgets

// Layout Margins
// Horizontal
const horizontalMargin8 = SizedBox(width: 8.0);
const horizontalMargin12 = SizedBox(width: 12.0);
const horizontalMargin16 = SizedBox(width: 16.0);
const horizontalMargin24 = SizedBox(width: 24.0);
const horizontalMargin32 = SizedBox(width: 32.0);

// Vertical
const verticalMargin8 = SizedBox(height: 8.0);
const verticalMargin12 = SizedBox(height: 12.0);
const verticalMargin16 = SizedBox(height: 16.0);
const verticalMargin24 = SizedBox(height: 24.0);
const verticalMargin32 = SizedBox(height: 32.0);
const verticalMargin40 = SizedBox(height: 40.0);
const verticalMargin48 = SizedBox(height: 48.0);
const verticalMargin56 = SizedBox(height: 56.0);
const verticalMargin64 = SizedBox(height: 64.0);
const verticalMargin72 = SizedBox(height: 72.0);
const verticalMargin80 = SizedBox(height: 80.0);

// Layout Paddings
// Horizontal
const horizontalPadding8 = EdgeInsets.symmetric(horizontal: 8.0);
const horizontalPadding16 = EdgeInsets.symmetric(horizontal: 16.0);

// Vertical
const verticalPadding16 = EdgeInsets.symmetric(vertical: 16.0);
const verticalPadding8 = EdgeInsets.symmetric(vertical: 8.0);

// Horizontal + Vertical
const allPadding8 = EdgeInsets.all(8.0);
const allPadding16 = EdgeInsets.all(16.0);

// Left
const leftPadding16 = EdgeInsets.only(left: 16.0);

// Top
const topPadding8 = EdgeInsets.only(top: 8.0);
const topPadding16 = EdgeInsets.only(top: 16.0);

// Right
const rightPadding16 = EdgeInsets.only(right: 16.0);

// Bottom
const bottomPadding16 = EdgeInsets.only(bottom: 16.0);

// Divider
const divider = Divider(thickness: 1, color: Colors.grey);

//LoadingSpinner
const loadingSpinner = Center(
  child: CircularProgressIndicator(
    color: Colors.green,
  ),
);

//TmdbImage
class TmdbImage extends StatelessWidget {
  final String path;
  const TmdbImage(this.path, {super.key});

  @override
  Widget build(BuildContext context) {
    return ImageFade(
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
    );
  }
}
