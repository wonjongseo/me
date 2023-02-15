import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/main/main_screen.dart';
import 'package:wonjongseo/screens/project_detail/components/project_detail_list.dart';
import 'package:wonjongseo/screens/report/components/setting_card.dart';

const String COMPANY_PATH = '/company';

class CompanyScreen extends StatelessWidget {
  CompanyScreen({super.key});
  Corporation corporation = corporation_projects[0];

  @override
  Widget build(BuildContext context) {
    double mainFontSize = Responsive.isDesktop(context) ? 35 : 20;
    return MainScreen(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CompanyScreenHeader(
                corporation: corporation, mainFontSize: mainFontSize),
            const SizedBox(height: defaultPadding),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description',
                    style: sectionTitleStyle(context)
                        .copyWith(fontSize: mainFontSize / 1.3)),
                const SizedBox(height: defaultPadding / 4),
                Text(
                  corporation.description,
                  style: TextStyle(fontSize: mainFontSize / 2),
                )
              ],
            ),
            const SizedBox(height: defaultPadding),
            ProjectDetailList(
              list: corporation.useIt!,
              detailTitle: 'User It',
            )
          ],
        ),
      ),
    );
  }
}

class CompanyScreenHeader extends StatelessWidget {
  const CompanyScreenHeader({
    Key? key,
    required this.corporation,
    required this.mainFontSize,
  }) : super(key: key);

  final Corporation corporation;
  final double mainFontSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              corporation.source,
              style:
                  sectionTitleStyle(context).copyWith(fontSize: mainFontSize),
            ),
            const SizedBox(height: defaultPadding / 4),
            Text.rich(
              style: TextStyle(fontSize: mainFontSize / 2),
              TextSpan(
                  text: corporation.startDate.toString().substring(0, 7),
                  children: [
                    const TextSpan(text: ' ~ '),
                    TextSpan(
                        text: corporation.endDate.toString().substring(0, 7))
                  ]),
            ),
            if (!Responsive.isDesktop(context))
              const SizedBox(height: defaultPadding),
            if (!Responsive.isDesktop(context))
              Row(
                  children: List.generate(
                corporation.settings.length,
                (index) {
                  if (corporation.settings[index]['isOK'] == false) {
                    return Container();
                  }
                  return SettingCard(
                    title: corporation.settings[index]['title'],
                    isOk: corporation.settings[index]['isOK'],
                  );
                },
              )),
          ],
        ),
        const SizedBox(width: defaultPadding),
        if (Responsive.isDesktop(context))
          Row(
            children: List.generate(
                corporation.settings.length,
                (index) => SettingCard(
                      title: corporation.settings[index]['title'],
                      isOk: corporation.settings[index]['isOK'],
                    )),
          ),
      ],
    );
  }
}
