import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wonjongseo/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../models/languages.dart';

class CVDownloadCard extends StatelessWidget {
  const CVDownloadCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          Get.dialog(AlertDialog(
            title: Text(
              toTr('download_cv'),
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 700));

                      if (Get.isDialogOpen != null) {
                        Get.back();
                      }

                      print('aaaaa' + dotenv.get('JP_CV_PATH'));

                      launchUrl(Uri.parse(dotenv.get('JP_CV_PATH'))
                          // Uri.parse(
                          //     'https://drive.google.com/file/d/1QrnK16kLDcR9CxuMcTf2wYvCTmDbCwpC/view?usp=share_link'),
                          );

                      Get.snackbar(
                        'CV',
                        'Download is completed.',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                    child: const Text('JP')),
                const SizedBox(width: defaultPadding / 3),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () async {
                      await Future.delayed(const Duration(milliseconds: 700));

                      if (Get.isDialogOpen != null) {
                        Get.back();
                      }

                      launchUrl(
                        Uri.parse(
                            'https://drive.google.com/file/d/19wa6yqFgyrttf5GIks0Bj_nA4GEw5zSd/view?usp=share_link'),
                      );
                      Get.snackbar(
                        'CV',
                        'Download is completed.',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                    child: Text('EN')),
                const SizedBox(width: defaultPadding / 3),
                ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: primaryColor),
                    onPressed: () async {
                      // await Future.delayed(const Duration(milliseconds: 700));

                      // if (Get.isDialogOpen != null) {
                      //   Get.back();
                      // }

                      Get.snackbar(
                        'CV',
                        'Download is failed. (NOT YET)',
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
                style: sectionTitleStyle(context)
                    .copyWith(color: primaryColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: defaultPadding / 2),
              SvgPicture.asset(
                "assets/icons/download.svg",
                color: primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
