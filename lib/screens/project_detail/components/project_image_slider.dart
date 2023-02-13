import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/Project.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:wonjongseo/screens/project_detail/project_detail_screen.dart';

class ProjectImageSlider extends StatelessWidget {
  ProjectImageSlider({
    Key? key,
    required this.project,
    required this.currentIndex,
    required this.setState,
    required this.carouselController,
  }) : super(key: key);

  final CarouselController carouselController;
  final Project project;
  final int currentIndex;
  final void Function(int) setState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
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
        SizedBox(
          width: 350,
          height: 650,
          child: Column(
            children: [
              CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  height: 600,
                  onPageChanged: (index, reason) {
                    setState(index);
                  },
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: project.images.asMap().entries.map((entry) {
                  return GestureDetector(
                    onTap: () => carouselController.animateToPage(entry.key),
                    child: Container(
                      width: 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              (Theme.of(context).brightness == Brightness.dark
                                      ? Colors.white
                                      : Colors.black)
                                  .withOpacity(
                                      currentIndex == entry.key ? 0.9 : 0.4)),
                    ),
                  );
                }).toList(),
              )
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
    );

    // content of Project
  }
}
