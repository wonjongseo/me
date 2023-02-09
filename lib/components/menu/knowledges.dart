import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wonjongseo/datas.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'Knowledges',
            style: sectionTitleStyle(context),
          ),
        ),
        ...List.generate(
            knowledges.length, (index) => Knowledge(text: knowledges[index]))
      ],
    );
  }
}

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(width: defaultPadding / 2),
          Text(text)
        ],
      ),
    );
  }
}
