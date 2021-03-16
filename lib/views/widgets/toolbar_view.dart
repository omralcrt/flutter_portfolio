import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';

class ToolbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Row(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/',
                );
              },
              child: Text("ÖMRAL CÖRÜT",
                  style: PortfolioTextStyles.toolbarLogoText)),
          Spacer(),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/',
                );
              },
              child: Text("Home",
                  style: PortfolioTextStyles.toolbarNavigationText)),
          SizedBox(width: 16),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/about',
                );
              },
              child: Text("About",
                  style: PortfolioTextStyles.toolbarNavigationText)),
          SizedBox(width: 16),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/projects',
                );
              },
              child: Text("Projects",
                  style: PortfolioTextStyles.toolbarNavigationText)),
        ],
      ),
    );
  }
}
