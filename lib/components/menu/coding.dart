import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/components/animated_circular_progress_indicator.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/datas.dart';

class Coding extends StatelessWidget {
  const Coding({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Coding',
            style: sectionTitleStyle(context),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: List.generate(
                codingList.length,
                (index) => AnimatedLinearProgressIndicator(
                    percentage: codingList[index]['value'] / 100,
                    label: codingList[index]['label'])),
          ),
        )
      ],
    );
  }
}
