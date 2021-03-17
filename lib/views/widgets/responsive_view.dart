import 'package:flutter/material.dart';

class ResponsiveView extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveView(
      {Key? key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen})
      : super(key: key);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800 &&
        MediaQuery.of(context).size.width <= 1200;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        return Container(
          child: Scrollbar(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: getResponsiveView(constraint),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget getResponsiveView(BoxConstraints constraints) {
    if (constraints.maxWidth > 1200) {
      return largeScreen;
    } else if (constraints.maxWidth <= 1200 && constraints.maxWidth >= 800) {
      return mediumScreen ?? largeScreen;
    } else {
      return smallScreen ?? (mediumScreen ?? largeScreen);
    }
  }
}
