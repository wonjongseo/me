import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/models/learn.dart';
import 'package:wonjongseo/responsive.dart';
import 'package:wonjongseo/screens/home/components/learning_card.dart';

class Learnings extends StatelessWidget {
  const Learnings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Learnings',
          style: sectionTitleStyle(context),
        ),
        const SizedBox(height: defaultPadding),
        Responsive(
          mobile: LearningGridView(
            itemCount: learns.length,
            crossAxisCount: 1,
            childAspectRatio: 2,
            itemBuilder: (context, index) => LearningCard(learn: learns[index]),
          ),
          mobileLarge: LearningGridView(
            itemCount: learns.length,
            crossAxisCount: 1,
            childAspectRatio: 3,
            itemBuilder: (context, index) => LearningCard(learn: learns[index]),
          ),
          tablet: LearningGridView(
            itemCount: learns.length,
            crossAxisCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: MediaQuery.of(context).size.width < 900 ? 2 : 1.3,
            itemBuilder: (context, index) => LearningCard(learn: learns[index]),
          ),
          desktop: LearningGridView(
            itemCount: learns.length,
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            itemBuilder: (context, index) => LearningCard(learn: learns[index]),
          ),
        ),
      ],
    );
  }
}

class LearningGridView extends StatelessWidget {
  const LearningGridView(
      {super.key,
      required this.itemCount,
      required this.crossAxisCount,
      required this.childAspectRatio,
      required this.itemBuilder});

  final int itemCount, crossAxisCount;
  final double childAspectRatio;
  final IndexedWidgetBuilder itemBuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: itemBuilder);
  }
}
