import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Color(0xFF242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(),
            CircleAvatar(
              radius: 50,
              // TODO
              backgroundColor: Colors.blue,
            ),
            const Spacer(),
            Text(
              'Won Jong Seo',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }
}
