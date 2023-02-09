import 'package:flutter/material.dart';
import 'package:wonjongseo/components/menu/animated_circular_progress_indicator.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/datas.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Text('Skills', style: sectionTitleStyle(context)),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Row(
            children: List.generate(
              skillsList.length,
              (index) => Skill(index: index),
            ),
          ),
        )
      ],
    );
  }
}

class Skill extends StatelessWidget {
  const Skill({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: defaultPadding * 0.7),
        child: AnimatedCircularProgressIndicator(
          percentage: skillsList[index]['skillLevel'] / 100,
          label: skillsList[index]['skillName'],
        ),
      ),
    );
  }
}
