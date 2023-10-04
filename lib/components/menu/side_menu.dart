import 'package:flutter/material.dart';
import 'package:wonjongseo/components/menu/coding.dart';
import 'package:wonjongseo/components/menu/contacts.dart';
import 'package:wonjongseo/components/menu/cv_download_card.dart';
import 'package:wonjongseo/components/menu/knowledges.dart';
import 'package:wonjongseo/components/menu/my_info.dart';

import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/data/datas.dart';

import 'package:wonjongseo/screens/home/components/area_info_text.dart';

class Abouts extends StatelessWidget {
  const Abouts({super.key});

  @override
  Widget build(BuildContext context) {
    print('asdfdsf');
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
                    const CVDownloadCard(),

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
