import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wonjongseo/screens/home/components/about_me_card.dart';
import 'package:wonjongseo/utils/language_switch_card.dart';

class AboutMeButton extends StatelessWidget {
  const AboutMeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: TextButton.styleFrom(
        padding: !Responsive.isMobile(context)
            ? const EdgeInsets.symmetric(
                horizontal: defaultPadding * 2, vertical: defaultPadding)
            : const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 4),
        backgroundColor: primaryColor,
      ),
      onPressed: () {
        var height = MediaQuery.of(context).size.height * 0.2;
        Get.dialog(AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("About Me!", style: sectionTitleStyle(context)),
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios)),
            ],
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: !Responsive.isMobile(context)
                  ? [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWellAboutMeCard(
                            height: height,
                            title: 'Name',
                            icon: const Icon(Icons.person),
                            content: toTr('programmer_name'),
                            onTap: () {
                              Get.dialog(Dialog(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(defaultPadding * 2),
                                  child: Text(toTr('programmer_name_ans')),
                                ),
                              ));
                            },
                          ),
                          const SizedBox(width: defaultPadding * 2),
                          InkWellAboutMeCard(
                            height: height,
                            title: 'Age',
                            icon: const Icon(Icons.calendar_month),
                            content: toTr('programmer_age'),
                            onTap: () {
                              Get.dialog(Dialog(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(defaultPadding * 2),
                                  child: Text(toTr('programmer_age_ans')),
                                ),
                              ));
                            },
                          ),
                          const SizedBox(width: defaultPadding * 2),
                          InkWellAboutMeCard(
                            icon: const Icon(Icons.home),
                            height: height,
                            title: 'Resident',
                            content: toTr('programmer_residence'),
                            onTap: () {
                              Get.dialog(Dialog(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(defaultPadding * 2),
                                  child: Text(toTr('programmer_city_ans')),
                                ),
                              ));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultPadding * 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWellAboutMeCard(
                            icon: const Icon(Icons.call),
                            height: height,
                            title: 'Phone',
                            content: '(+81)070-8544-9956',
                            onTap: () {
                              launchUrl(Uri.parse('tel:07085449956'));
                            },
                          ),
                          const SizedBox(width: defaultPadding * 2),
                          InkWellAboutMeCard(
                            icon: const Icon(Icons.email),
                            height: height,
                            title: 'Email',
                            content: 'visionwill3322@gmail.com',
                            onTap: () {
                              launchUrl(
                                Uri.parse('mailto:visionwill3322@gmail.com'),
                              );
                            },
                          ),
                          const SizedBox(width: defaultPadding * 2),
                          InkWellAboutMeCard(
                            icon: const Icon(Icons.school),
                            height: height,
                            title: 'Academic Ability',
                            content: toTr('academic_ability'),
                            onTap: () {
                              launchUrl(
                                Uri.parse('http://home.sejong.ac.kr/~cedpt/'),
                              );
                            },
                          ),
                        ],
                      ),
                    ]
                  : [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWellAboutMeCard(
                            height: height / 1.5,
                            title: 'Name',
                            icon: const Icon(Icons.person, size: 14),
                            content: toTr('programmer_name'),
                            onTap: () {
                              Get.dialog(Dialog(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(defaultPadding * 2),
                                  child: Text(toTr('programmer_name_ans')),
                                ),
                              ));
                            },
                          ),
                          const SizedBox(width: defaultPadding),
                          InkWellAboutMeCard(
                            height: height / 1.5,
                            title: 'Age',
                            icon: const Icon(Icons.calendar_month, size: 14),
                            content: toTr('programmer_age'),
                            onTap: () {
                              Get.dialog(Dialog(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(defaultPadding * 2),
                                  child: Text(toTr('programmer_age_ans')),
                                ),
                              ));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultPadding),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWellAboutMeCard(
                            height: height / 1.5,
                            title: 'Resident',
                            icon: const Icon(Icons.home, size: 14),
                            content: toTr('programmer_residence'),
                            onTap: () {
                              Get.dialog(Dialog(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.all(defaultPadding * 2),
                                  child: Text(toTr('programmer_city_ans')),
                                ),
                              ));
                            },
                          ),
                          const SizedBox(width: defaultPadding),
                          InkWellAboutMeCard(
                            height: height / 1.5,
                            title: 'Phone',
                            content: '070-8544-9956',
                            icon: const Icon(Icons.call, size: 14),
                            onTap: () {
                              // print('why');
                              // launchUrl(Uri.parse('tel:07085449956'));
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: defaultPadding),
                      InkWellAboutMeCard(
                        height: height / 1.5,
                        title: 'Email',
                        icon: const Icon(Icons.email, size: 14),
                        content: 'visionwill3322@gmail.com',
                        onTap: () async {
                          await launchUrl(
                            Uri.parse('mailto:visionwill3322@gmail.com'),
                          );
                        },
                      ),
                      const SizedBox(height: defaultPadding),
                      InkWellAboutMeCard(
                        height: height / 1.5,
                        title: 'Academic Ability',
                        icon: const Icon(Icons.school, size: 14),
                        content: toTr('academic_ability'),
                        onTap: () {
                          launchUrl(
                            Uri.parse('http://home.sejong.ac.kr/~cedpt/'),
                          );
                        },
                      ),
                    ],
            ),
          ),
        ));
      },
      child: Text(
        'About Me!',
        style: TextStyle(
          color: darkColor,
          fontSize: !Responsive.isMobile(context) ? 14 : 13,
        ),
      ),
    );
  }
}
