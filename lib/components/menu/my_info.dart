import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/languages.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor.withOpacity(0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/me.jpg'),
            ),
            const Spacer(),
            Text(
              toTr('programmer_name'),
              style: sectionTitleStyle(context),
            ),
            const Text(
              'Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(flex: 1)
          ],
        ),
      ),
    );
  }
}
