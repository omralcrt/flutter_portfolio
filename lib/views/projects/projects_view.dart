import 'package:flutter/material.dart';
import 'package:flutter_portfolio/models/project_model.dart';
import 'package:flutter_portfolio/resources/projects.dart';
import 'package:flutter_portfolio/views/widgets/footer_view.dart';
import 'package:flutter_portfolio/views/widgets/project_item_view.dart';
import 'package:flutter_portfolio/views/widgets/responsive_view.dart';
import 'package:flutter_portfolio/views/widgets/toolbar_view.dart';

class ProjectsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveView(
      largeScreen: Column(children: [
        ToolbarView(),
        Expanded(child: buildProjectsContent(3)),
        FooterView()
      ]),
      mediumScreen: Column(children: [
        ToolbarView(),
        Expanded(child: buildProjectsContent(2)),
        FooterView()
      ]),
      smallScreen: Column(children: [
        ToolbarView(),
        Expanded(child: buildProjectsContent(1)),
        FooterView()
      ]),
    );
  }

  Widget buildProjectsContent(int columnCount) {
    final projects = Projects.allProjects;
    return Container(
        padding: EdgeInsets.all(32),
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: buildProjectRows(projects, columnCount)));
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
