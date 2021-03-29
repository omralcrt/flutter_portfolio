import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/project_model.dart';
import 'package:flutter_portfolio/resources/portfolio_text_styles.dart';
import 'package:flutter_portfolio/resources/projects.dart';
import 'package:flutter_portfolio/views/widgets/project_item_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return buildProjectsContent(context);
  }

  Widget buildProjectsContent(BuildContext context) {
    final projects = Projects.allProjects;
    return Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SelectableText(
                  "Projects",
                  style: PortfolioTextStyles.aboutTitleText,
                ),
              ),
              SizedBox(height: 16),
              ...buildProjectRows(
                  projects,
                  getValueForScreenType<int>(
                      context: context, mobile: 1, tablet: 2, desktop: 3))
            ]));
  }

  List<Widget> buildProjectRows(List<ProjectModel> projects, int columnCount) {
    final rowCount = (projects.length / columnCount).round();
    List<Widget> result = [];
    for (var i = 0; i < rowCount; i++) {
      int start = i * columnCount;
      int end = start + columnCount;
      if (end > projects.length) {
        end = projects.length;
      }
      List<ProjectModel> rowItems = projects.sublist(start, end);
      result.add(Row(children: buildProjectRowItems(rowItems, columnCount)));
    }

    return result;
  }

  List<Widget> buildProjectRowItems(
      List<ProjectModel> projects, int columnCount) {
    List<Widget> result = projects
        .map((project) => Expanded(child: ProjectItemView(project)))
        .toList();
    for (var i = 0; i < (columnCount - projects.length); i++) {
      result.add(Expanded(child: SizedBox()));
    }
    return result;
  }
}
