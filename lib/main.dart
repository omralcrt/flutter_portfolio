import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/about/about_view.dart';
import 'package:flutter_portfolio/views/welcome/welcome_view.dart';

void main() {
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
        '/': (context) => WelcomeView(),
        '/about': (context) => AboutView(),
      },
    );
  }
}