import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/components/animated_circular_progress_indicator.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/datas.dart';

class AnimatedProgressIndicator extends StatefulWidget {
  const AnimatedProgressIndicator(
      {super.key, required this.text, required this.list});

  final String text;
  final List<Skill> list;

  @override
  State<AnimatedProgressIndicator> createState() =>
      _AnimatedProgressIndicatorState();
}

class _AnimatedProgressIndicatorState extends State<AnimatedProgressIndicator> {
  bool isShowMore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            widget.text,
            style: sectionTitleStyle(context),
          ),
        ),
        isShowMore
            ? Column(
                children: List.generate(
                    widget.list.length,
                    (index) => AnimatedLinearProgressIndicator(
                        imageUrl: widget.list[index].image,
                        percentage: widget.list[index].value / 100,
                        label: widget.list[index].language)),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                child: Row(
                  children: List.generate(
                      3,
                      (index) => AnimatedCircularProgressIndicatorContainer(
                          percentage: widget.list[index].value / 100,
                          label: widget.list[index].language)),
                ),
              ),
        TextButton(
            onPressed: () {
              setState(() {
                isShowMore = !isShowMore;
              });
            },
            child: isShowMore
                ? const Text(
                    'Fold...',
                    style: TextStyle(color: primaryColor),
                  )
                : const Text(
                    'Show More...',
                    style: TextStyle(color: primaryColor),
                  ))
      ],
    );
  }
}
