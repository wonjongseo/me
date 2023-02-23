import 'package:flutter/cupertino.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/responsive.dart';

class ProjectDetailList extends StatelessWidget {
  const ProjectDetailList({
    Key? key,
    required this.list,
    required this.detailTitle,
    this.projectIndex,
  }) : super(key: key);
  final String detailTitle;
  final List<String> list;
  final String? projectIndex;

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
        if (!Responsive.isDesktop(context))
          ...List.generate(
            list.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding / 2),
              child: Text(
                detailTitle == 'Specifications'
                    ? '${index + 1}. ${toTr('index_${projectIndex}_specifications_$index')}'
                    : '${index + 1}. ${list[index]}',
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
        if (Responsive.isDesktop(context) && list.length <= 10)
          ...List.generate(
            list.length,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding / 2),
              child: Text(
                detailTitle == 'Specifications'
                    ? '${index + 1}. ${toTr('index_${projectIndex}_specifications_$index')}'
                    : '${index + 1}. ${list[index]}',
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
        if (Responsive.isDesktop(context) && list.length > 10)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    10,
                    (index) => Padding(
                      padding:
                          const EdgeInsets.only(bottom: defaultPadding / 2),
                      child: Text(
                        detailTitle == 'Specifications'
                            ? '${index + 1}. ${toTr('index_${projectIndex}_specifications_$index')}'
                            : '${index + 1}. ${list[index]}',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  )),
              const SizedBox(width: defaultPadding),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    list.length - 10,
                    (index) => Padding(
                      padding:
                          const EdgeInsets.only(bottom: defaultPadding / 2),
                      child: Text(
                        detailTitle == 'Specifications'
                            ? '${index + 10 + 1}. ${toTr('index_${projectIndex}_specifications_${index + 10}')}'
                            : '${index + 10 + 1}. ${list[index + 10]}',
                        style: const TextStyle(fontSize: 12),
                      ),
                    ),
                  ))
            ],
          ),
        const SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
