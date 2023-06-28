import 'package:flutter/material.dart';
import 'package:tmdb_clone_app/di/di_container.dart';
import 'package:tmdb_clone_app/routes/router.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: diContainer.get<AppRouter>().config(),
    );
  }
}
