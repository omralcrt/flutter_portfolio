import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('View About', style: PortfolioTextStyles.robotoSlabLight36,),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/about',
            );
          },
        ),
      ),
    );
  }
}