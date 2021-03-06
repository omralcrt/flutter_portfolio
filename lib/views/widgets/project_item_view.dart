import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/project_model.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';
import 'package:flutter_portfolio/resources/portfolio_colors.dart';

class ProjectItemView extends StatelessWidget {
  final ProjectModel project;

  ProjectItemView(this.project);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        color: PortfolioColors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 8,
          ),
        ],
      ),
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
              aspectRatio: 2 / 1,
              child: Image.asset(project.cover, fit: BoxFit.cover)),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: SelectableText(
                    project.title,
                    style: PortfolioTextStyles.projectItemTitleText,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: SelectableText(
                    project.platform,
                    style: PortfolioTextStyles.projectItemPlatformText,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 24),
                SelectableText.rich(
                  TextSpan(
                    style: PortfolioTextStyles.projectItemDescriptionTitleText,
                    children: <TextSpan>[
                      TextSpan(text: 'Year             : '),
                      TextSpan(
                          text: '${project.year}',
                          style:
                              PortfolioTextStyles.projectItemDescriptionText),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                SelectableText.rich(
                  TextSpan(
                    style: PortfolioTextStyles.projectItemDescriptionTitleText,
                    children: <TextSpan>[
                      TextSpan(text: 'Industry     : '),
                      TextSpan(
                          text: '${project.industry}',
                          style:
                              PortfolioTextStyles.projectItemDescriptionText),
                    ],
                  ),
                  minLines: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
