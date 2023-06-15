import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: MovieDetailsRoute.page),
        AutoRoute(page: PersonDetailsRoute.page),
        AutoRoute(page: PopularMoviesRoute.page),
        AutoRoute(page: TrendingMoviesRoute.page),
      ];
}
