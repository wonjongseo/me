import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/screens/main/main_scrren.dart';

const String PROJECT_DETAIL_PATH = '/detail';

class ProjectDetailScrenn extends StatelessWidget {
  const ProjectDetailScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      body: Text('detail'),
    );
  }
}
