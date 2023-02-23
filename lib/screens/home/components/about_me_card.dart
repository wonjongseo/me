import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';

class AboutMeCard extends StatelessWidget {
  const AboutMeCard({
    Key? key,
    required this.height,
    required this.title,
    required this.content,
    required this.icon,
  }) : super(key: key);

  final double height;
  final String title;
  final String content;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            color: secondaryColor,
            borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: !Responsive.isMobile(context)
                      ? defaultPadding
                      : defaultPadding / 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  icon,
                  SizedBox(
                      width: !Responsive.isMobile(context)
                          ? defaultPadding / 3
                          : defaultPadding / 4),
                  Text(
                    title,
                    style: !Responsive.isMobile(context)
                        ? Theme.of(context).textTheme.subtitle1!
                        : Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(fontSize: 13),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Text(
              content,
              style: !Responsive.isMobile(context)
                  ? Theme.of(context).textTheme.subtitle2!
                  : Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 12),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

class InkWellAboutMeCard extends StatefulWidget {
  const InkWellAboutMeCard({
    Key? key,
    required this.height,
    required this.title,
    required this.content,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;
  final double height;
  final String title;
  final String content;
  final Icon icon;

  @override
  State<InkWellAboutMeCard> createState() => _InkWellAboutMeCardState();
}

class _InkWellAboutMeCardState extends State<InkWellAboutMeCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);
  final defaultCardShadow = BoxShadow(
    offset: const Offset(0, 20),
    blurRadius: 50,
    color: Colors.white.withOpacity(0.3),
  );
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          height: widget.height,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              color: secondaryColor,
              boxShadow: [if (isHover) defaultCardShadow],
              borderRadius: BorderRadius.circular(10.0)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: !Responsive.isMobile(context)
                        ? defaultPadding
                        : defaultPadding / 1.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.icon,
                    SizedBox(
                        width: !Responsive.isMobile(context)
                            ? defaultPadding / 3
                            : defaultPadding / 4),
                    Text(
                      widget.title,
                      style: !Responsive.isMobile(context)
                          ? Theme.of(context).textTheme.subtitle1!
                          : Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 13),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text(
                widget.content,
                style: !Responsive.isMobile(context)
                    ? Theme.of(context).textTheme.subtitle2!
                    : Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 12),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
