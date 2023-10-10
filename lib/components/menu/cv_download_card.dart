import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wonjongseo/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wonjongseo/responsive.dart';
import '../../models/languages.dart';
import 'package:animate_do/animate_do.dart';

class CVDownloadCard extends StatelessWidget {
  const CVDownloadCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.center,
      child: TextButton(
        onPressed: () {
          Get.dialog(AlertDialog(
            backgroundColor: Colors.transparent,
            title: Text(
              toTr('download_cv'),
            ),
            content: SizedBox(
              width: size.width * 0.4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CvButton(
                    onTap: () {
                      if (Get.isDialogOpen != null) {
                        Get.back();
                      }
                      launchUrl(
                        Uri.parse(
                            'https://drive.google.com/file/d/1WBDTx4fk_hDNugmmmvMT-GL_cWm-ERrW/view?usp=share_link'),
                      );
                    },
                    langauge: Responsive.isMobile(context) ? 'JP' : 'Japanese',
                  ),
                  const SizedBox(width: defaultPadding / 2),
                  CvButton(
                    milliseconds: 200,
                    langauge: Responsive.isMobile(context) ? 'EN' : 'English',
                    onTap: () {
                      if (Get.isDialogOpen != null) {
                        Get.back();
                      }
                      launchUrl(
                        Uri.parse(
                            'https://drive.google.com/file/d/1qc6FCrPhYRqUystbCvJKMqMtBmzdfTrK/view?usp=share_link'),
                      );
                    },
                  ),
                  const SizedBox(width: defaultPadding / 2),
                  CvButton(
                    milliseconds: 400,
                    langauge: Responsive.isMobile(context) ? 'KR' : 'Korean',
                    onTap: () {
                      if (Get.isDialogOpen != null) {
                        Get.back();
                      }

                      launchUrl(
                        Uri.parse(
                            'https://drive.google.com/file/d/1AzFYklrefC1jAzEcqHaCH7L7J8AKqyZo/view?usp=share_link'),
                      );
                      Get.snackbar(
                        'CV',
                        'Download is completed.',
                        snackPosition: SnackPosition.BOTTOM,
                      );
                    },
                  )
                ],
              ),
            ),
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

class CvButton extends StatelessWidget {
  const CvButton(
      {super.key,
      required this.langauge,
      required this.onTap,
      this.milliseconds = 0});

  final String langauge;
  final Function() onTap;
  final int milliseconds;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FadeInDown(
        delay: Duration(milliseconds: milliseconds),
        child: SizedBox(
          height: Responsive.isMobile(context) ? 30 : 50,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.all(8)),
              onPressed: onTap,
              child: Text(
                langauge,
                style: const TextStyle(color: bodyTextColor),
              )),
        ),
      ),
    );
  }
}
