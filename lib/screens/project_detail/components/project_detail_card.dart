import 'package:flutter/cupertino.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/Project.dart';
import 'package:wonjongseo/screens/project_detail/components/homepage_lisk_card.dart';
import 'package:wonjongseo/screens/project_detail/components/project_detail_string.dart';
import 'package:wonjongseo/screens/project_detail/components/project_detail_list.dart';

class ProjectDetailCard extends StatelessWidget {
  const ProjectDetailCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: sectionTitleStyle(context).copyWith(fontSize: 16),
          ),
          const SizedBox(height: defaultPadding / 4),
          Text(
            project.description,
            // textAlign: TextAlign.center,
          ),
          const SizedBox(height: defaultPadding * 2),
          if (project.frontend != null)
            ProjectDetailString(
                detailTitle: project.frontend!, title: 'Front end'),
          if (project.backend != null)
            ProjectDetailString(
                detailTitle: project.backend!, title: 'Back end'),
          if (project.homepagePath != null)
            HomePageLinkCard(
                projectTitle: project.title,
                text: 'Try It',
                path: project.homepagePath!),
          if (project.specifications != null)
            ProjectDetailList(
                detailTitle: 'Specifications', list: project.specifications!),
          if (project.useThat != null)
            ProjectDetailList(detailTitle: 'Use It', list: project.useThat!),
        ],
      ),
    );
  }
}
