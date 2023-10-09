import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';

class AboutMeCard extends StatefulWidget {
  const AboutMeCard(
      {Key? key,
      required this.height,
      required this.title,
      required this.content,
      required this.iconData,
      this.onTap,
      this.contextSize = 20,
      this.textSize = 16})
      : super(key: key);

  final double height;
  final String title;
  final String content;
  final IconData iconData;
  final double contextSize;
  final double textSize;
  final Function()? onTap;
  @override
  State<AboutMeCard> createState() => _AboutMeCardState();
}

final kDefaultCardShadow =
    BoxShadow(offset: Offset(0, 20), blurRadius: 50, color: Colors.red);

class _AboutMeCardState extends State<AboutMeCard> {
  bool isHover = false;
  Duration hoverDuration = Duration(microseconds: 200);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: widget.onTap != null ? widget.onTap! : () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: hoverDuration,
        height: widget.height / 1.5,
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding * 1.5, vertical: defaultPadding),
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            if (isHover) kDefaultCardShadow,
            BoxShadow(color: Colors.grey, blurRadius: 2.2, offset: Offset(5, 5))
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  widget.iconData,
                  color: bodyTextColor,
                ),
                const SizedBox(width: 10),
                Text(
                  widget.title,
                  style: TextStyle(
                    color: bodyTextColor,
                    fontSize: widget.textSize,
                  ),
                ),
              ],
            ),
            SizedBox(height: Responsive.isMobile(context) ? 10 : 30),
            Text(
              widget.content,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize:
                      isHover ? widget.contextSize * 1.1 : widget.contextSize,
                  letterSpacing: Responsive.isMobile(context) ? null : 1.5),
            ),
            SizedBox(height: Responsive.isMobile(context) ? 3 : 10),
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
  // Duration duration = const Duration(milliseconds: 200);
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
        child: Container(
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
                          ? Theme.of(context).textTheme.titleMedium!
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
