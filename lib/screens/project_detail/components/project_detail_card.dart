import 'package:flutter/cupertino.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/Project.dart';
import 'package:wonjongseo/screens/project_detail/components/homepage_lisk_card.dart';
import 'package:wonjongseo/screens/project_detail/components/project_detail_string.dart';
import 'package:wonjongseo/screens/project_detail/components/project_detail_list.dart';

class ProjectDetailCard extends StatelessWidget {
  const ProjectDetailCard({Key? key, required this.project, this.width})
      : super(key: key);
  final double? width;
  final Project project;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: sectionTitleStyle(context).copyWith(fontSize: 16),
          ),
          const SizedBox(height: defaultPadding / 4),
          Text(project.descriptionToLocale(project.index)),
          const SizedBox(height: defaultPadding * 2),
          if (project.frontend != null)
            ProjectDetailString(
                detailTitle: project.frontend!, title: 'Front end'),
          if (project.backend != null)
            ProjectDetailString(
                detailTitle: project.backend!, title: 'Back end'),
          if (project.githubPath != null)
            HomePageLinkCard(
                projectTitle: project.title,
                text: 'Git Url',
                path: project.githubPath!),
          if (project.androidUrl != null)
            HomePageLinkCard(
                projectTitle: project.title,
                text: 'Download App for Android',
                path: project.androidUrl!),
          if (project.appleUrl != null)
            HomePageLinkCard(
                projectTitle: project.title,
                text: 'Download App for IOS',
                path: project.appleUrl!),
          if (project.homepagePath != null)
            HomePageLinkCard(
                projectTitle: project.title,
                text: 'Try It',
                path: project.homepagePath!),
          if (project.specifications != null)
            ProjectDetailList(
              detailTitle: 'Specifications',
              list: project.specifications!,
              projectIndex: project.index,
            ),
          if (project.useThat != null)
            ProjectDetailList(
              detailTitle: 'Use It',
              list: project.useThat!,
              projectIndex: project.index,
            ),
        ],
      ),
    );
  }
}
