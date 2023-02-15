import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/main/main_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wonjongseo/screens/project_detail/components/project_detail_list.dart';
import 'package:wonjongseo/screens/report/components/setting_card.dart';
import 'package:get/get.dart';

const String REPORT_PATH = '/report';

class ReportSceen extends StatelessWidget {
  const ReportSceen({required this.corporation});

  final Corporation corporation;
  @override
  Widget build(BuildContext context) {
    EdgeInsets paddingValue = Responsive.isMobile(context)
        ? const EdgeInsets.symmetric(
            horizontal: defaultPadding * 1, vertical: defaultPadding * 2)
        : Responsive.isTablet(context)
            ? const EdgeInsets.symmetric(
                horizontal: defaultPadding * 3, vertical: defaultPadding * 2)
            : const EdgeInsets.symmetric(
                horizontal: defaultPadding * 10, vertical: defaultPadding * 4);

    return !GetPlatform.isDesktop || !Responsive.isDesktop(context)
        ? MainScreen(
            body: SafeArea(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: paddingValue,
                  child: SingleChildScrollView(
                      child: ReportCard(
                    corporation: corporation,
                  )),
                ),
              ),
            ),
          )
        : Scaffold(
            body: SafeArea(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: paddingValue,
                  child: SingleChildScrollView(
                      child: ReportCard(
                    corporation: corporation,
                  )),
                ),
              ),
            ),
          );
  }
}

class ReportCard extends StatelessWidget {
  const ReportCard({super.key, required this.corporation});
  final Corporation corporation;

  // ignore: non_constant_identifier_names
  Border RBLBorder() {
    return const Border(
        right: BorderSide(color: Colors.black, width: 2),
        bottom: BorderSide(color: Colors.black, width: 2),
        left: BorderSide(color: Colors.black, width: 2));
  }

  @override
  Widget build(BuildContext context) {
    double mainFontSize = Responsive.isMobile(context)
        ? 9
        : Responsive.isTablet(context)
            ? 16
            : 28;

    num mainAxisCellCount = Responsive.isMobile(context)
        ? 1.7
        : Responsive.isTablet(context)
            ? 2
            : 1;

    TextStyle reportTextStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: Responsive.isMobile(context)
            ? mainFontSize - 2
            : Responsive.isTablet(context)
                ? mainFontSize - 4
                : mainFontSize - 8,
        color: Colors.black);

    double paddingValue =
        Responsive.isMobile(context) ? defaultPadding / 3 : defaultPadding / 2;

    return Column(
      children: [
        if (Responsive.isDesktop(context))
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: List.generate(
                corporation.settings.length,
                (index) => SettingCard(
                      title: corporation.settings[index]['title'],
                      isOk: corporation.settings[index]['isOK'],
                    )),
          ),
        if (!Responsive.isMobile(context))
          const SizedBox(height: defaultPadding / 2),
        StaggeredGrid.count(
          crossAxisCount: 13,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 5,
              mainAxisCellCount: 2,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    toTr('project_completion_report'),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: mainFontSize,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                      bottom: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    toTr('author'),
                    style: reportTextStyle,
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                      top: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    toTr('programmer_name'),
                    style: reportTextStyle,
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    toTr('date_writed'),
                    style: reportTextStyle,
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.grey),
                child: Center(
                  child: Text(
                    '2023/02/15',
                    style: reportTextStyle,
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text(
                    toTr('project_name'),
                    style: reportTextStyle,
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    corporation.source,
                    style: reportTextStyle,
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child:
                      Text(toTr('performance_period'), style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text.rich(
                    style: reportTextStyle,
                    TextSpan(
                        text: corporation.startDate.toString().substring(0, 7),
                        children: [
                          const TextSpan(text: '  ~  '),
                          TextSpan(
                              text: corporation.endDate
                                  .toString()
                                  .substring(0, 7))
                        ]),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text(toTr('assigned_task'), style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        corporation.assignedTask!.length,
                        (index) => Padding(
                              padding: EdgeInsets.only(bottom: paddingValue),
                              child: Text(
                                corporation.assignedTask![index],
                                style: reportTextStyle,
                              ),
                            )),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text(toTr('operating_environment'),
                      style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        corporation.operatingEnvironment!.length,
                        (index) => Padding(
                              padding: EdgeInsets.only(bottom: paddingValue),
                              child: Text(
                                corporation.operatingEnvironment![index],
                                style: reportTextStyle,
                              ),
                            )),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: mainAxisCellCount * 2,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text(toTr('used_learned'), style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: mainAxisCellCount * 2,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                        corporation.useIt!.length,
                        (index) => Padding(
                              padding: EdgeInsets.only(bottom: paddingValue),
                              child: Text(
                                '${index + 1}. ${corporation.useIt![index]}',
                                style: reportTextStyle,
                              ),
                            )),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text(toTr('problems_future_countermeasures'),
                      style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: mainAxisCellCount,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text('문제 점\n향후 대응방안', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: mainAxisCellCount * 3,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text(toTr('point_me_felt'), style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: mainAxisCellCount * 3,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text('느낀점', style: reportTextStyle),
                ),
              ),
            ),
            // StaggeredGridTile.count(
            //   crossAxisCellCount: 3,
            //   mainAxisCellCount: 2,
            //   child: Container(
            //     decoration:
            //         BoxDecoration(border: RBLBorder(), color: Colors.grey),
            //     child: Center(
            //       child: Text('73'),
            //     ),
            //   ),
            // ),
            // StaggeredGridTile.count(
            //   crossAxisCellCount: 10,
            //   mainAxisCellCount: 2,
            //   child: Container(
            //     decoration: const BoxDecoration(
            //         border: Border(
            //             bottom: BorderSide(color: Colors.black, width: 2),
            //             right: BorderSide(color: Colors.black, width: 2)),
            //         color: Colors.white),
            //     child: Center(
            //       child: Text('61'),
            //     ),
            //   ),
            // ),
          ],
        ),
      ],
    );
  }
}
