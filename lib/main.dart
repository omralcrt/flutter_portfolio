import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/about/about_view.dart';
import 'package:flutter_portfolio/views/projects/projects_view.dart';
import 'package:flutter_portfolio/views/home/home_view.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ömral Cörüt',
      initialRoute: "/",
      routes: {
        '/': (context) => HomeView(),
        '/about': (context) => AboutView(),
        '/projects': (context) => ProjectsView(),
      },
    );
  }
}