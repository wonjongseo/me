import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/languages.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:get/route_manager.dart';
import 'package:animate_do/animate_do.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wonjongseo/screens/home/components/about_me_card.dart';
import 'package:wonjongseo/utils/language_switch_card.dart';
import 'package:wonjongseo/utils/utilsFunction.dart';

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
                horizontal: defaultPadding, vertical: defaultPadding / 2),
        backgroundColor: primaryColor,
      ),
      onPressed: () {
        var height = MediaQuery.of(context).size.height * 0.2;

        Get.dialog(AlertDialog(
          backgroundColor: Colors.transparent,
          contentPadding: EdgeInsets.zero,
          content: AboutMeContainer(height: height),
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

class AboutMeContainer extends StatelessWidget {
  const AboutMeContainer({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
        // color: Colors.red,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: !Responsive.isMobile(context)
            ? [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FadeInDown(
                        child: AboutMeCard(
                          onTap: () {
                            Get.dialog(AlertDialog(
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset('assets/images/me.jpg')
                                  ]),
                            ));
                          },
                          height: height,
                          title: 'Name',
                          iconData: Icons.person,
                          content: toTr('programmer_name'),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding * 2),
                    Expanded(
                      child: FadeInDown(
                        delay: Duration(milliseconds: 200),
                        child: AboutMeCard(
                          onTap: () {
                            Get.dialog(AlertDialog(
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'assets/images/Taurus.jpeg',
                                      height: 300,
                                    )
                                  ]),
                            ));
                          },
                          height: height,
                          title: 'Age',
                          contextSize: 17,
                          iconData: Icons.calendar_month,
                          content: toTr('programmer_age'),
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding * 2),
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 400),
                        child: AboutMeCard(
                          onTap: () {
                            Get.dialog(AlertDialog(
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset('assets/images/Japan.jpeg')
                                  ]),
                            ));
                          },
                          iconData: Icons.home,
                          height: height,
                          title: 'Resident',
                          content: toTr('programmer_residence'),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding * 2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 600),
                        child: AboutMeCard(
                          onTap: () {
                            launchUrl(Uri.parse('tel:07085449956'));
                          },
                          iconData: Icons.call,
                          height: height,
                          title: 'Phone',
                          contextSize: 13,
                          content: '(+81)\n070-8544-9956',
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding * 2),
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 800),
                        child: AboutMeCard(
                            onTap: () {
                              launchUrl(
                                Uri.parse('mailto:visionwill3322@gmail.com'),
                              );
                            },
                            iconData: Icons.email,
                            height: height,
                            title: 'Email',
                            content: 'visionwill3322\n@gmail.com',
                            contextSize: 13),
                      ),
                    ),
                    const SizedBox(width: defaultPadding * 2),
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 1000),
                        child: AboutMeCard(
                          onTap: () {
                            launchUrl(
                              Uri.parse(
                                  'https://www.google.com/search?q=%E4%B8%96%E5%AE%97%E5%A4%A7%E5%AD%A6%E6%A0%A1+%E4%B8%96%E7%95%8C%E4%BD%95%E4%BD%8D&sca_esv=571840155&sxsrf=AM9HkKnheZChjJFsscXEECFrGsBnEYkc4Q%3A1696849102625&ei=ztwjZdLhJejQ2roP49OVyAo&oq=%E4%B8%96%E5%AE%97%E5%A4%A7%E5%AD%A6%E6%A0%A1%E3%80%80%E4%B8%96%E7%95%8C%E3%81%AA%E3%82%93&gs_lp=Egxnd3Mtd2l6LXNlcnAiHuS4luWul-Wkp-WtpuagoeOAgOS4lueVjOOBquOCkyoCCAAyBRAhGKABSM1RULAqWP5FcAJ4AZABAJgB8QGgAY8MqgEGMC4xMC4xuAEDyAEA-AEBwgIKEAAYRxjWBBiwA8ICBRAAGIAEwgIEEAAYHsICBhAAGB4YD8ICBRAAGKIEwgIIEAAYiQUYogTiAwQYACBBiAYBkAYK&sclient=gws-wiz-serp'),
                            );
                          },
                          iconData: Icons.school,
                          height: height,
                          title: 'Academic Ability',
                          contextSize: 13,
                          content: toTr('academic_ability'),
                        ),
                      ),
                    ),
                  ],
                ),
              ]
            : [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FadeInDown(
                        child: AboutMeCard(
                          onTap: () {
                            Get.dialog(AlertDialog(
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset('assets/images/me.jpg')
                                  ]),
                            ));
                          },
                          height: height / 1.35,
                          title: 'Name',
                          iconData: Icons.person,
                          content: toTr('programmer_name'),
                          contextSize: 10,
                          textSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 200),
                        child: AboutMeCard(
                          onTap: () {
                            Get.dialog(AlertDialog(
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset(
                                      'assets/images/Taurus.jpeg',
                                    )
                                  ]),
                            ));
                          },
                          height: height / 1.35,
                          title: 'Age',
                          iconData: Icons.calendar_month,
                          content: toTr('programmer_age'),
                          contextSize: 10,
                          textSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 400),
                        child: AboutMeCard(
                          onTap: () {
                            Get.dialog(AlertDialog(
                              content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image.asset('assets/images/Japan.jpeg')
                                  ]),
                            ));
                          },
                          height: height / 1.35,
                          title: 'Home',
                          iconData: Icons.home,
                          content: toTr('programmer_residence'),
                          contextSize: 10,
                          textSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding),
                    Expanded(
                      child: FadeInDown(
                        delay: const Duration(milliseconds: 600),
                        child: AboutMeCard(
                          onTap: () {
                            launchUrl(Uri.parse('tel:07085449956'));
                          },
                          height: height / 1.35,
                          title: 'Phone',
                          content: '070-8544-9956',
                          iconData: Icons.call,
                          contextSize: 10,
                          textSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                FadeInDown(
                  delay: const Duration(milliseconds: 800),
                  child: AboutMeCard(
                    onTap: () async {
                      await launchUrl(
                        Uri.parse('mailto:visionwill3322@gmail.com'),
                      );
                    },
                    height: height / 1.35,
                    title: 'Email',
                    iconData: Icons.email,
                    content: 'visionwill3322@gmail.com',
                    contextSize: 12,
                    textSize: 14,
                  ),
                ),
                const SizedBox(height: defaultPadding),
                FadeInDown(
                  delay: const Duration(milliseconds: 1000),
                  child: AboutMeCard(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                            'https://www.google.com/search?q=%E4%B8%96%E5%AE%97%E5%A4%A7%E5%AD%A6%E6%A0%A1+%E4%B8%96%E7%95%8C%E4%BD%95%E4%BD%8D&sca_esv=571840155&sxsrf=AM9HkKnheZChjJFsscXEECFrGsBnEYkc4Q%3A1696849102625&ei=ztwjZdLhJejQ2roP49OVyAo&oq=%E4%B8%96%E5%AE%97%E5%A4%A7%E5%AD%A6%E6%A0%A1%E3%80%80%E4%B8%96%E7%95%8C%E3%81%AA%E3%82%93&gs_lp=Egxnd3Mtd2l6LXNlcnAiHuS4luWul-Wkp-WtpuagoeOAgOS4lueVjOOBquOCkyoCCAAyBRAhGKABSM1RULAqWP5FcAJ4AZABAJgB8QGgAY8MqgEGMC4xMC4xuAEDyAEA-AEBwgIKEAAYRxjWBBiwA8ICBRAAGIAEwgIEEAAYHsICBhAAGB4YD8ICBRAAGKIEwgIIEAAYiQUYogTiAwQYACBBiAYBkAYK&sclient=gws-wiz-serp'),
                      );
                    },
                    height: height / 1.1,
                    title: 'Academic Ability',
                    iconData: Icons.school,
                    content: toTr('academic_ability'),
                    contextSize: 10,
                    textSize: 14,
                  ),
                ),
              ],
      ),
    );
  }
}
