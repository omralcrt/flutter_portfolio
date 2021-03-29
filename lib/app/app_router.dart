import 'package:auto_route/auto_route.dart';
import 'package:flutter_portfolio/views/about/about_view.dart';
import 'package:flutter_portfolio/views/home/home_view.dart';
import 'package:flutter_portfolio/views/projects/projects_view.dart';

@CustomAutoRouter(routes: <AutoRoute>[
  CustomRoute(page: HomeView, initial: true),
  CustomRoute(page: AboutView, path: "/about"),
  CustomRoute(page: ProjectsView, path: "/projects"),
  RedirectRoute(path: '*', redirectTo: '/'),
])
class $AppRouter {}
