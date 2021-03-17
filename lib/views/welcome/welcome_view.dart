import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';
import 'package:flutter_portfolio/views/widgets/footer_view.dart';
import 'package:flutter_portfolio/views/widgets/toolbar_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        return Container(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    ToolbarView(),
                    Expanded(child: buildHomeContent()),
                    FooterView()
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget buildHomeContent() {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        buildSocialAccounts()
      ]),
    );
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
