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
import 'package:wonjongseo/screens/project_detail/components/project_detail_card.dart';

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
