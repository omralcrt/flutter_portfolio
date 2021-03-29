import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';
import 'package:flutter_portfolio/views/layout_template/layout_template.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutTemplate(child: buildHomeContent());
  }

  Widget buildHomeContent() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(height: 32),
      SizedBox(
        width: 200,
        height: 200,
        child: CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
        ),
      ),
      SizedBox(height: 24),
      SelectableText("Ömral Cörüt", style: PortfolioTextStyles.homeTitleText),
      SizedBox(height: 8),
      SelectableText("Mobile Application Developer",
          style: PortfolioTextStyles.homeSubtitleText),
      SizedBox(height: 24),
      buildSocialAccounts(),
      SizedBox(height: 32),
    ]);
  }

  Widget buildSocialAccounts() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: FaIcon(FontAwesomeIcons.twitter),
            iconSize: 32,
            onPressed: () {
              launch("https://twitter.com/omralcrt");
            }),
        SizedBox(width: 16),
        IconButton(
            icon: FaIcon(FontAwesomeIcons.github),
            iconSize: 32,
            onPressed: () {
              launch("https://github.com/omralcrt");
            }),
        SizedBox(width: 16),
        IconButton(
            icon: FaIcon(FontAwesomeIcons.linkedin),
            iconSize: 32,
            onPressed: () {
              launch("https://www.linkedin.com/in/omralcrt/");
            }),
        SizedBox(width: 16),
        IconButton(
            icon: FaIcon(FontAwesomeIcons.medium),
            iconSize: 32,
            onPressed: () {
              launch("https://omralcrt.medium.com/");
            }),
        SizedBox(width: 16),
        IconButton(
            icon: FaIcon(FontAwesomeIcons.solidEnvelope),
            iconSize: 32,
            onPressed: () {
              launch("mailto:omralcrt@gmail.com");
            }),
      ],
    );
  }
}
