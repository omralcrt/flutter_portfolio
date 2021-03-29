import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app_router.gr.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ToolbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: ScreenTypeLayout(
            mobile: buildMobileToolbarContent(context),
            tablet: buildTabletDesktopToolbarContent(context),
          ));
    });
  }

  Widget buildMobileToolbarContent(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: FaIcon(FontAwesomeIcons.bars),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            }),
        Spacer(),
        TextButton(
            onPressed: () {
              context.router.replace(HomeViewRoute());
            },
            child: Text("ÖMRAL CÖRÜT",
                style: PortfolioTextStyles.toolbarLogoText)),
      ],
    );
  }

  Widget buildTabletDesktopToolbarContent(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              context.router.replace(HomeViewRoute());
            },
            child: Text("ÖMRAL CÖRÜT",
                style: PortfolioTextStyles.toolbarLogoText)),
        Spacer(),
        Row(
          children: buildMenuList(context),
        )
      ],
    );
  }

  List<Widget> buildMenuList(BuildContext context) {
    return [
      TextButton(
          onPressed: () {
            context.router.replace(HomeViewRoute());
          },
          child:
              Text("Home", style: PortfolioTextStyles.toolbarNavigationText)),
      SizedBox(width: 16, height: 16),
      TextButton(
          onPressed: () {
            context.router.replace(AboutViewRoute());
          },
          child:
              Text("About", style: PortfolioTextStyles.toolbarNavigationText)),
      SizedBox(width: 16, height: 16),
      TextButton(
          onPressed: () {
            context.router.replace(ProjectsViewRoute());
          },
          child: Text("Projects",
              style: PortfolioTextStyles.toolbarNavigationText)),
    ];
  }
}
