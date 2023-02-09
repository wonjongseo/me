import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/Project.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/home/components/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Projects',
          style: sectionTitleStyle(context),
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: 1,
            childAspectRatio: 2,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
          mobileLarge: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: 1,
            childAspectRatio: 3,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
          tablet: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: MediaQuery.of(context).size.width < 900 ? 2 : 1.3,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
          desktop: ProjectGridView(
            itemCount: demo_projects.length,
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            itemBuilder: (context, index) =>
                ProjectCard(project: demo_projects[index]),
          ),
        ),
      ],
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView(
      {super.key,
      required this.itemCount,
      required this.crossAxisCount,
      required this.childAspectRatio,
      required this.itemBuilder});

  final int itemCount, crossAxisCount;
  final double childAspectRatio;
  final IndexedWidgetBuilder itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: itemBuilder);
  }
}
