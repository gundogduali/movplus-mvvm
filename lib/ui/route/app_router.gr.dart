// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:movplus_mvvm/data/model/movie/movie_model.dart' as _i10;
import 'package:movplus_mvvm/ui/pages/detail/movie_detail_screen.dart' as _i2;
import 'package:movplus_mvvm/ui/pages/genre/genre_movies/genre_movies_screen.dart'
    as _i5;
import 'package:movplus_mvvm/ui/pages/genre/genre_screen.dart' as _i4;
import 'package:movplus_mvvm/ui/pages/home/home_screen.dart' as _i6;
import 'package:movplus_mvvm/ui/pages/root/root_screen.dart' as _i1;
import 'package:movplus_mvvm/ui/pages/search/search_screen.dart' as _i3;
import 'package:movplus_mvvm/ui/pages/watchlist/watchlist_screen.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    RootScreen.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.RootScreen());
    },
    MovieDetailScreen.name: (routeData) {
      final args = routeData.argsAs<MovieDetailScreenArgs>();
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i2.MovieDetailScreen(key: args.key, movie: args.movie));
    },
    SearchScreen.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i3.SearchScreen());
    },
    GenreScreen.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i4.GenreScreen());
    },
    GenreMoviesScreen.name: (routeData) {
      final args = routeData.argsAs<GenreMoviesScreenArgs>();
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData,
          child: _i5.GenreMoviesScreen(
              key: args.key, id: args.id, title: args.title));
    },
    HomeScreen.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.HomeScreen());
    },
    WatchListScreen.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i7.WatchListScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(RootScreen.name, path: '/', children: [
          _i8.RouteConfig(HomeScreen.name,
              path: 'home-screen', parent: RootScreen.name),
          _i8.RouteConfig(WatchListScreen.name,
              path: 'watch-list-screen', parent: RootScreen.name)
        ]),
        _i8.RouteConfig(MovieDetailScreen.name, path: '/detail'),
        _i8.RouteConfig(SearchScreen.name, path: '/search'),
        _i8.RouteConfig(GenreScreen.name, path: '/genre'),
        _i8.RouteConfig(GenreMoviesScreen.name, path: '/genre/{id}')
      ];
}

/// generated route for
/// [_i1.RootScreen]
class RootScreen extends _i8.PageRouteInfo<void> {
  const RootScreen({List<_i8.PageRouteInfo>? children})
      : super(RootScreen.name, path: '/', initialChildren: children);

  static const String name = 'RootScreen';
}

/// generated route for
/// [_i2.MovieDetailScreen]
class MovieDetailScreen extends _i8.PageRouteInfo<MovieDetailScreenArgs> {
  MovieDetailScreen({_i9.Key? key, required _i10.MovieModel? movie})
      : super(MovieDetailScreen.name,
            path: '/detail',
            args: MovieDetailScreenArgs(key: key, movie: movie));

  static const String name = 'MovieDetailScreen';
}

class MovieDetailScreenArgs {
  const MovieDetailScreenArgs({this.key, required this.movie});

  final _i9.Key? key;

  final _i10.MovieModel? movie;

  @override
  String toString() {
    return 'MovieDetailScreenArgs{key: $key, movie: $movie}';
  }
}

/// generated route for
/// [_i3.SearchScreen]
class SearchScreen extends _i8.PageRouteInfo<void> {
  const SearchScreen() : super(SearchScreen.name, path: '/search');

  static const String name = 'SearchScreen';
}

/// generated route for
/// [_i4.GenreScreen]
class GenreScreen extends _i8.PageRouteInfo<void> {
  const GenreScreen() : super(GenreScreen.name, path: '/genre');

  static const String name = 'GenreScreen';
}

/// generated route for
/// [_i5.GenreMoviesScreen]
class GenreMoviesScreen extends _i8.PageRouteInfo<GenreMoviesScreenArgs> {
  GenreMoviesScreen({_i9.Key? key, required int id, required String title})
      : super(GenreMoviesScreen.name,
            path: '/genre/{id}',
            args: GenreMoviesScreenArgs(key: key, id: id, title: title));

  static const String name = 'GenreMoviesScreen';
}

class GenreMoviesScreenArgs {
  const GenreMoviesScreenArgs(
      {this.key, required this.id, required this.title});

  final _i9.Key? key;

  final int id;

  final String title;

  @override
  String toString() {
    return 'GenreMoviesScreenArgs{key: $key, id: $id, title: $title}';
  }
}

/// generated route for
/// [_i6.HomeScreen]
class HomeScreen extends _i8.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: 'home-screen');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i7.WatchListScreen]
class WatchListScreen extends _i8.PageRouteInfo<void> {
  const WatchListScreen()
      : super(WatchListScreen.name, path: 'watch-list-screen');

  static const String name = 'WatchListScreen';
}
