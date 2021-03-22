import 'package:flutter/material.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';
import 'package:flutter_portfolio/views/widgets/responsive_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ToolbarView extends StatefulWidget {
  @override
  _ToolbarViewState createState() => _ToolbarViewState();
}

class _ToolbarViewState extends State<ToolbarView> {
  var isMenuBarShowing = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
      child: Column(
        children: [
          Row(
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
              ResponsiveView.isSmallScreen(context)
                  ? IconButton(
                      icon: FaIcon(FontAwesomeIcons.bars),
                      onPressed: () {
                        setState(() {
                          isMenuBarShowing = !isMenuBarShowing;
                        });
                      })
                  : Row(
                      children: buildMenuList(context),
                    )
            ],
          ),
          Visibility(
            visible: ResponsiveView.isSmallScreen(context) && isMenuBarShowing,
            child: Column(children: [...buildMenuList(context)]),
          )
        ],
      ),
    );
  }

  List<Widget> buildMenuList(BuildContext context) {
    return [
      TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/',
            );
          },
          child:
              Text("Home", style: PortfolioTextStyles.toolbarNavigationText)),
      SizedBox(width: 16, height: 16),
      TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/about',
            );
          },
          child:
              Text("About", style: PortfolioTextStyles.toolbarNavigationText)),
      SizedBox(width: 16, height: 16),
      TextButton(
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/projects',
            );
          },
          child: Text("Projects",
              style: PortfolioTextStyles.toolbarNavigationText)),
    ];
  }
}
