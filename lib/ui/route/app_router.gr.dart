// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:movplus_mvvm/ui/pages/detail/movie_detail_screen.dart' as _i2;
import 'package:movplus_mvvm/ui/pages/home/home_screen.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeScreen.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i1.HomeScreen());
    },
    MovieDetailScreen.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i2.MovieDetailScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomeScreen.name, path: '/'),
        _i3.RouteConfig(MovieDetailScreen.name, path: '/detail')
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeScreen extends _i3.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i2.MovieDetailScreen]
class MovieDetailScreen extends _i3.PageRouteInfo<void> {
  const MovieDetailScreen() : super(MovieDetailScreen.name, path: '/detail');

  static const String name = 'MovieDetailScreen';
}
