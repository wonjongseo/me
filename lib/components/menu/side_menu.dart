import 'package:flutter/material.dart';
import 'package:wonjongseo/components/menu/coding.dart';
import 'package:wonjongseo/components/menu/contacts.dart';
import 'package:wonjongseo/components/menu/knowledges.dart';
import 'package:wonjongseo/components/menu/my_info.dart';

import 'package:wonjongseo/constants.dart';
import 'package:get/get.dart';
import 'package:wonjongseo/datas.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/screens/home/components/area_info_text.dart';
import 'package:wonjongseo/utils/dialog.dart';

class Abouts extends StatelessWidget {
  const Abouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            'About Me',
            style: sectionTitleStyle(context),
          ),
        ),
        ...List.generate(
            infoList.length,
            (index) => AreaInfoText(
                title: infoList[index]['title']!,
                text: infoList[index]['text']!)),
      ],
    );
  }
}

//
//
class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Get.dialog(AlertDialog(
                            title: Text(toTr('download_cv')),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryColor),
                                    onPressed: () async {
                                      await Future.delayed(
                                          const Duration(milliseconds: 700));

                                      if (Get.isDialogOpen != null) {
                                        Get.back();
                                      }

                                      Get.snackbar(
                                        'CV',
                                        'Download is completed. (for test)',
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    },
                                    child: Text('JP')),
                                const SizedBox(width: defaultPadding / 3),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryColor),
                                    onPressed: () async {
                                      await Future.delayed(
                                          const Duration(milliseconds: 700));

                                      if (Get.isDialogOpen != null) {
                                        Get.back();
                                      }

                                      Get.snackbar(
                                        'CV',
                                        'Download is completed. (for test)',
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    },
                                    child: Text('EN')),
                                const SizedBox(width: defaultPadding / 3),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: primaryColor),
                                    onPressed: () async {
                                      await Future.delayed(
                                          const Duration(milliseconds: 700));

                                      if (Get.isDialogOpen != null) {
                                        Get.back();
                                      }

                                      Get.snackbar(
                                        'CV',
                                        'Download is completed. (for test)',
                                        snackPosition: SnackPosition.BOTTOM,
                                      );
                                    },
                                    child: Text('KO')),
                              ],
                            ),
                            actions: [
                              IconButton(
                                  onPressed: () => Get.back(),
                                  icon: Icon(Icons.arrow_back_ios_new))
                            ],
                          ));
                        },
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                'DOWNLOAD CV',
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color),
                              ),
                              const SizedBox(width: defaultPadding / 2),
                              SvgPicture.asset("assets/icons/download.svg"),
                            ],
                          ),
                        ),
                      ),
                    ),

                    const Contacts(),
                    // const Abouts(),
                    AnimatedProgressIndicator(
                        text: 'FrameWorks', list: frameWorkList),
                    AnimatedProgressIndicator(
                        text: 'Languages', list: langaugeList),
                    const Knowledges(),
                    const Divider(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
