import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/Project.dart';
import 'package:wonjongseo/screens/main/main_scrren.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

const String PROJECT_DETAIL_PATH = '/detail';

class ProjectDetailScrenn extends StatefulWidget {
  const ProjectDetailScrenn({super.key});

  @override
  State<ProjectDetailScrenn> createState() => _ProjectDetailScrennState();
}

class _ProjectDetailScrennState extends State<ProjectDetailScrenn> {
  late Project project;
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

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Text(
            '${project.title}',
            style: sectionTitleStyle(context),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Text(project.description)),
          const SizedBox(height: defaultPadding),
          Row(
            children: [
              IconButton(
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () {
                    carouselController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  icon: const Icon(Icons.arrow_left)),
              Expanded(
                child: Column(
                  children: [
                    CarouselSlider(
                      carouselController: carouselController,
                      options: CarouselOptions(
                        // autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                        height: 600,
                      ),
                      items: List.generate(
                        project.images.length,
                        (index) => Container(
                          margin: const EdgeInsets.all(5.0),
                          child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.asset(
                                    project.images[index],
                                  ),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      // ignore: sort_child_properties_last
                                      child: Text(
                                        'No. ${index + 1} image',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0, horizontal: 20.0),
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    carouselController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  icon: const Icon(Icons.arrow_right)),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
