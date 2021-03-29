import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/about/about_view.dart';
import 'package:flutter_portfolio/views/home/home_view.dart';
import 'package:flutter_portfolio/views/projects/projects_view.dart';
import 'package:flutter_portfolio/views/widgets/centered_view.dart';
import 'package:flutter_portfolio/views/widgets/footer_view.dart';
import 'package:flutter_portfolio/views/widgets/toolbar_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        body: CenteredView(
          minHeight: sizingInformation.screenSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ToolbarView(),
              SizedBox(height: 64),
              HomeView(),
              SizedBox(height: 64),
              AboutView(),
              SizedBox(height: 64),
              ProjectsView(),
              SizedBox(height: 32),
              FooterView()
            ],
          ),
        ),
      ),
    );
  }
}
