import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.text,
    required this.value,
  }) : super(key: key);
  final String text;
  final int value;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: defaultDuration,
      builder: (context, value, child) => Text(
        value.toString() + text,
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: primaryColor),
      ),
    );
  }
}
