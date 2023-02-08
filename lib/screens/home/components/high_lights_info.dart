import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/components/menu/animated_counter.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          // HeighLight(
          //   counter: AnimatedCounter(
          //     value: 119,
          //     text: "K+",
          //   ),
          //   label: "Subscribers",
          // ),
          // HeighLight(
          //   counter: AnimatedCounter(
          //     value: 40,
          //     text: "+",
          //   ),
          //   label: "Videos",
          // ),
          HeighLight(
            counter: AnimatedCounter(
              value: 4,
              text: "+",
            ),
            label: "GitHub Projects",
          ),
          // HeighLight(
          //   counter: AnimatedCounter(
          //     value: 13,
          //     text: "K+",
          //   ),
          //   label: "Stars",
          // ),
        ],
      ),
    );
  }
}

class HeighLight extends StatelessWidget {
  const HeighLight({
    Key? key,
    required this.counter,
    required this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        const SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
