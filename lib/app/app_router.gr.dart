// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../views/about/about_view.dart' as _i3;
import '../views/home/home_view.dart' as _i2;
import '../views/projects/projects_view.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeViewRoute.name: (entry) {
      return _i1.CustomPage(
          entry: entry,
          child: _i2.HomeView(),
          opaque: true,
          barrierDismissible: false);
    },
    AboutViewRoute.name: (entry) {
      return _i1.CustomPage(
          entry: entry,
          child: _i3.AboutView(),
          opaque: true,
          barrierDismissible: false);
    },
    ProjectsViewRoute.name: (entry) {
      return _i1.CustomPage(
          entry: entry,
          child: _i4.ProjectsView(),
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeViewRoute.name, path: '/'),
        _i1.RouteConfig(AboutViewRoute.name, path: '/about'),
        _i1.RouteConfig(ProjectsViewRoute.name, path: '/projects'),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class HomeViewRoute extends _i1.PageRouteInfo {
  const HomeViewRoute() : super(name, path: '/');

  static const String name = 'HomeViewRoute';
}

class AboutViewRoute extends _i1.PageRouteInfo {
  const AboutViewRoute() : super(name, path: '/about');

  static const String name = 'AboutViewRoute';
}

class ProjectsViewRoute extends _i1.PageRouteInfo {
  const ProjectsViewRoute() : super(name, path: '/projects');

  static const String name = 'ProjectsViewRoute';
}
