import 'package:flutter/material.dart';
import 'package:flutter_portfolio/views/widgets/centered_view.dart';
import 'package:flutter_portfolio/views/widgets/footer_view.dart';
import 'package:flutter_portfolio/views/widgets/navigation_drawer.dart';
import 'package:flutter_portfolio/views/widgets/toolbar_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;

  const LayoutTemplate({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        body: CenteredView(
          minHeight: sizingInformation.screenSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ToolbarView(),
              child,
              FooterView()
            ],
          ),
        ),
      ),
    );
  }
}
