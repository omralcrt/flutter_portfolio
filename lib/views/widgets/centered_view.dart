import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_colors.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final double minHeight;

  const CenteredView({Key? key, required this.child, required this.minHeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          alignment: Alignment.topCenter,
          color: PortfolioColors.white,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200, minHeight: minHeight),
            child: child,
          ),
        ),
      ),
    );
  }
}
