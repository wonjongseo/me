import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:wonjongseo/screens/home/components/high_lights_info.dart';
import 'package:wonjongseo/screens/home/components/home_banner.dart';
import 'package:wonjongseo/screens/main/main_scrren.dart';

const String HOME_PATH = '/';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      body: Column(
        children: [HomeBanner(), HighLightsInfo()],
      ),
    );
  }
}