import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';

class SettingCard extends StatelessWidget {
  const SettingCard({
    Key? key,
    required this.title,
    required this.isOk,
  }) : super(key: key);

  final String title;
  final bool isOk;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: Stack(
        children: [
          Container(
            width: 70,
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.white,
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
          Container(
            width: 70,
            height: 25,
            decoration: const BoxDecoration(
              color: darkColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(0.0),
                  topLeft: Radius.circular(0.0)),
            ),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withOpacity(0.9),
                    wordSpacing: 2,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          if (isOk)
            const Positioned(
                top: 20,
                right: 0,
                left: 0,
                bottom: 0,
                child: Icon(
                  Icons.circle,
                  color: Colors.black,
                  size: 13,
                ))
        ],
      ),
    );
  }
}
