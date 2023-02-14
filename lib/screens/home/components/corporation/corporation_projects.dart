import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/components/animated_counter.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/screens/home/components/high_light/high_light.dart';
import 'package:wonjongseo/utils/dialog.dart';

class CorporationProjects extends StatelessWidget {
  const CorporationProjects({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: HeighLight(
            counter: AnimatedCounter(
              value: corporation_projects.length,
              text: "+",
            ),
            label: "Corporation Projects",
          ),
        ),
        Text(
          'Corporation Projects',
          style: sectionTitleStyle(context),
        ),
        const SizedBox(height: defaultPadding),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                corporation_projects.length,
                (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding),
                      child: CorporationProjectCard(
                        corporationProject: corporation_projects[index],
                      ),
                    )),
          ),
        )
      ],
    );
  }
}

class CorporationProjectCard extends StatelessWidget {
  const CorporationProjectCard({super.key, required this.corporationProject});
  final Corporation corporationProject;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        openDialog(title: corporationProject.name, content: 'Not Ready');
      },
      child: Container(
        width: 400,
        padding: const EdgeInsets.all(defaultPadding),
        color: secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              corporationProject.name!,
              style: sectionTitleStyle(context),
            ),
            Text(corporationProject.source!),
            const SizedBox(height: defaultPadding / 2),
            Text(
              corporationProject.description!,
              maxLines: 4,
              style: TextStyle(height: 1.5),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}