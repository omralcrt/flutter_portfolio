import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';

class ToolbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Row(
          children: [
            Text("ÖMRAL CÖRÜT",
                style: PortfolioTextStyles.toolbarLogoText),
          ],
        ));
  }
}
