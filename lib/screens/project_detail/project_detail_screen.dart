import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/Project.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/main/main_scrren.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:wonjongseo/screens/project_detail/components/project_image_slider.dart';

const String PROJECT_DETAIL_PATH = '/detail';

class ProjectDetailScrenn extends StatefulWidget {
  const ProjectDetailScrenn({super.key});

  @override
  State<ProjectDetailScrenn> createState() => _ProjectDetailScrennState();
}

class _ProjectDetailScrennState extends State<ProjectDetailScrenn> {
  late Project project;
  int currentIndex = 0;
  late CarouselController carouselController = CarouselController();
  @override
  void initState() {
    super.initState();
    findProject();
  }

  void findProject() {
    var params = Get.parameters;
    if (params != null && params['id'] != null) {
      project = demo_projects.elementAt(int.parse(params['id']!));
    } else {
      project = demo_projects.elementAt(0);
    }
  }

  void changeIndexOfSlider(int newIndex) {
    setState(() {
      currentIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      body: Responsive.isDesktop(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.7 - 100,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: defaultPadding * 2),
                    child: Text(
                      project.title,
                      style: sectionTitleStyle(context).copyWith(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const SizedBox(height: defaultPadding * 2),
                  // Responsive.isDesktop(context)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProjectImageSlider(
                          carouselController: carouselController,
                          setState: changeIndexOfSlider,
                          project: project,
                          currentIndex: currentIndex),
                      const SizedBox(width: defaultPadding * 2),
                      ProjectDetailCard(project: project)
                    ],
                  ),
                  // SingleChildScrollView(
                  //     child: Column(
                  //       children: [
                  //         ProjectImageSlider(
                  //             carouselController: carouselController,
                  //             setState: changeIndexOfSlider,
                  //             project: project,
                  //             currentIndex: currentIndex),
                  //         ProjectDetailCard(project: project)
                  //       ],
                  //     ),
                  //   ),
                  const Spacer(flex: 1),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    project.title,
                    style: sectionTitleStyle(context).copyWith(
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(height: defaultPadding * 2),
                  ProjectImageSlider(
                      carouselController: carouselController,
                      setState: changeIndexOfSlider,
                      project: project,
                      currentIndex: currentIndex),
                  ProjectDetailCard(project: project)
                ],
              ),
            ),
    );
  }
}

class ProjectDetailCard extends StatelessWidget {
  const ProjectDetailCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: sectionTitleStyle(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: defaultPadding / 4),
        Text(
          project.description,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: defaultPadding * 2),
        if (project.frontend != null)
          ProjectDetailString(
              detailTitle: project.frontend!, title: 'Front end'),
        if (project.backend != null)
          ProjectDetailString(detailTitle: project.backend!, title: 'Back end'),
        if (project.homepagePath != null)
          HomePageLinkCard(title: 'Try It', path: project.homepagePath!),
        if (project.specifications != null)
          ProjectDetailList(
              detailTitle: 'Specifications', list: project.specifications!),
        if (project.useThat != null)
          ProjectDetailList(detailTitle: 'Use It', list: project.useThat!),
      ],
    );
  }
}

class HomePageLinkCard extends StatelessWidget {
  const HomePageLinkCard({
    Key? key,
    required this.path,
    required this.title,
  }) : super(key: key);

  final String path;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: sectionTitleStyle(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: defaultPadding / 4),
        Row(
          children: [
            const Text('Go to '),
            TextButton(
              onPressed: () {
                launchUrl(
                  Uri.parse(path),
                );
              },
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero),
                minimumSize: MaterialStateProperty.all(Size.zero),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              child: const Text('Jongseo Toeic'),
            ),
          ],
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}

class ProjectDetailString extends StatelessWidget {
  const ProjectDetailString({
    Key? key,
    required this.detailTitle,
    required this.title,
  }) : super(key: key);
  final String detailTitle;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: sectionTitleStyle(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: defaultPadding / 4),
        Text(
          detailTitle,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}

class ProjectDetailList extends StatelessWidget {
  const ProjectDetailList({
    Key? key,
    required this.list,
    required this.detailTitle,
  }) : super(key: key);
  final String detailTitle;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detailTitle,
          style: sectionTitleStyle(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: defaultPadding / 4),
        ...List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding / 2),
            child: Text(
              '${index + 1}. ${list[index]}',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
