import 'package:flutter/cupertino.dart';
import 'package:wonjongseo/constants.dart';

class ProjectDetailList extends StatelessWidget {
  const ProjectDetailList({
    Key? key,
    required this.list,
    required this.detailTitle,
  }) : super(key: key);
  final String detailTitle;
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          detailTitle,
          style: sectionTitleStyle(context).copyWith(fontSize: 16),
        ),
        const SizedBox(height: defaultPadding / 4),
        ...List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: defaultPadding / 2),
            child: Text(
              '${index + 1}. ${list[index]}',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
