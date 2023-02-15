import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/CorporationProjects.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/company/company_screen.dart';
import 'package:wonjongseo/screens/main/main_screen.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wonjongseo/screens/report/components/setting_card.dart';

const String REPORT_PATH = '/report';

class ReportSceen extends StatelessWidget {
  const ReportSceen({super.key, required this.corporation});

  final Corporation corporation;

  @override
  Widget build(BuildContext context) {
    EdgeInsets paddingValue = Responsive.isDesktop(context)
        ? const EdgeInsets.symmetric(
            horizontal: defaultPadding * 10, vertical: defaultPadding * 4)
        : const EdgeInsets.symmetric(
            horizontal: defaultPadding * 2, vertical: defaultPadding * 4);

    return Scaffold(
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
    double mainFontSize = Responsive.isDesktop(context) ? 28 : 12;
    TextStyle reportTextStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: mainFontSize - 6,
        color: Colors.black);

    TextStyle reportTextSmallStyle = TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: mainFontSize - 8,
        color: Colors.black);
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
        if (Responsive.isDesktop(context))
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
                    '프로젝트 완료 보고서',
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
                    '작성자 (계급 및 성명)',
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
                    '작성 일자',
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
              mainAxisCellCount: 1,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text(
                    '프로젝트 명',
                    style: reportTextStyle,
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: 1,
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
              mainAxisCellCount: 1,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text('수행 기간', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: 1,
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
                          const TextSpan(text: ' ~ '),
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
              mainAxisCellCount: 1,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text('담당 업무', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text('7'),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text('운영 환경', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text('6', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text('사용한 것 (배운 것)', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: 2,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text('6'),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text('문제 점\n향후 대응방안', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: 1,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text('61'),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 3,
              child: Container(
                decoration:
                    BoxDecoration(border: RBLBorder(), color: Colors.grey),
                child: Center(
                  child: Text('느낀점', style: reportTextStyle),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 10,
              mainAxisCellCount: 3,
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 2),
                      right: BorderSide(color: Colors.black, width: 2),
                    ),
                    color: Colors.white),
                child: Center(
                  child: Text('7'),
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
