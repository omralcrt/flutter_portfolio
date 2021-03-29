import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_portfolio/app/app_router.gr.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        children: buildMenuList(context),
      ),
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
