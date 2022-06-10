import 'package:auto_route/auto_route.dart';

import '../pages/detail/movie_detail_screen.dart';
import '../pages/home/home_screen.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomeScreen,
      initial: true,
    ),
    AutoRoute(
      path: '/detail',
      page: MovieDetailScreen,
    ),
  ],
)
// extend the generated private router
class $AppRouter {}
