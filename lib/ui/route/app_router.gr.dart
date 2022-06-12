// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:movplus_mvvm/ui/pages/detail/movie_detail_screen.dart' as _i2;
import 'package:movplus_mvvm/ui/pages/home/home_screen.dart' as _i3;
import 'package:movplus_mvvm/ui/pages/root/root_screen.dart' as _i1;
import 'package:movplus_mvvm/ui/pages/watchlist/watchlist_screen.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    RootScreen.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.RootScreen());
    },
    MovieDetailScreen.name: (routeData) {
      final args = routeData.argsAs<MovieDetailScreenArgs>();
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.MovieDetailScreen(key: args.key, movieId: args.movieId));
    },
    HomeScreen.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    WatchListScreen.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.WatchListScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(RootScreen.name, path: '/', children: [
          _i5.RouteConfig(HomeScreen.name,
              path: 'home-screen', parent: RootScreen.name),
          _i5.RouteConfig(WatchListScreen.name,
              path: 'watch-list-screen', parent: RootScreen.name)
        ]),
        _i5.RouteConfig(MovieDetailScreen.name, path: '/detail')
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreen extends _i5.PageRouteInfo<void> {
  const RootScreen({List<_i5.PageRouteInfo>? children})
      : super(RootScreen.name, path: '/', initialChildren: children);

  static const String name = 'RootScreen';
}

/// generated route for
/// [_i2.MovieDetailScreen]
class MovieDetailScreen extends _i5.PageRouteInfo<MovieDetailScreenArgs> {
  MovieDetailScreen({_i6.Key? key, required int movieId})
      : super(MovieDetailScreen.name,
            path: '/detail',
            args: MovieDetailScreenArgs(key: key, movieId: movieId));

  static const String name = 'MovieDetailScreen';
}

class MovieDetailScreenArgs {
  const MovieDetailScreenArgs({this.key, required this.movieId});

  final _i6.Key? key;

  final int movieId;

  @override
  String toString() {
    return 'MovieDetailScreenArgs{key: $key, movieId: $movieId}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i5.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: 'home-screen');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.WatchListScreen]
class WatchListScreen extends _i5.PageRouteInfo<void> {
  const WatchListScreen()
      : super(WatchListScreen.name, path: 'watch-list-screen');

  static const String name = 'WatchListScreen';
}
