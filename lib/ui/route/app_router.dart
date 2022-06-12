import 'package:auto_route/auto_route.dart';

import '../pages/detail/movie_detail_screen.dart';
import '../pages/home/home_screen.dart';
import '../pages/root/root_screen.dart';
import '../pages/watchlist/watchlist_screen.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: RootScreen,
      children: [
        AutoRoute(
          page: HomeScreen,
        ),
        AutoRoute(
          page: WatchListScreen,
        ),
      ],
    ),
    AutoRoute(
      path: '/detail',
      page: MovieDetailScreen,
    ),
  ],
)
// extend the generated private router
class $AppRouter {}
