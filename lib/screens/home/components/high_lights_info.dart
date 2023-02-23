import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/components/animated_counter.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/models/project.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/home/components/high_light/high_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeighLight(
            counter: AnimatedCounter(
              value: corporation_projects.length,
              text: "+",
            ),
            label: "Corporation Projects",
          ),
          const SizedBox(width: defaultPadding),
          HeighLight(
            counter: AnimatedCounter(
              value: my_projects.length,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
        ],
      ),
    );
  }
}
