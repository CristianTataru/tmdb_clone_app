import 'package:flutter/material.dart';
import 'package:tmdb_clone_app/routes/router.dart';

final router = AppRouter();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
    );
  }
}
