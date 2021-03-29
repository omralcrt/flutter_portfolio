import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_colors.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildAboutContent();
  }

  Widget buildAboutContent() {
    return Container(
      padding: EdgeInsets.all(32),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
            "About",
            style: PortfolioTextStyles.aboutTitleText,
          ),
          SizedBox(height: 16),
          SelectableText(
            "After discovering my passion for developing software, I couldn’t get enough. I made android applications for myself and published them to the store. After the university, I got a job. I still develop mobile applications with the passion of the first day. I am experienced at Native Android & iOS and Flutter development. I follow clean code principles.",
            style: PortfolioTextStyles.aboutContentText,
          ),
          SizedBox(height: 24),
          SelectableText(
            "CV",
            style: PortfolioTextStyles.aboutSubtitleText,
          ),
          SizedBox(height: 16),
          SelectableText.rich(
            TextSpan(
              style: PortfolioTextStyles.aboutContentText,
              children: <TextSpan>[
                TextSpan(text: 'It’s ${DateTime.now().year}, so just visit: '),
                TextSpan(
                    text: 'linkedin.com/in/omralcrt',
                    style: PortfolioTextStyles.aboutContentText
                        .copyWith(color: PortfolioColors.lonestar),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launch("https://www.linkedin.com/in/omralcrt/");
                      }),
                TextSpan(text: ". It's up to date."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
