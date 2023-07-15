import 'package:flutter/cupertino.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/screens/home/components/home_banner.dart';
import 'package:wonjongseo/screens/home/components/corporation/corporation_projects.dart';
import 'package:wonjongseo/screens/home/components/projects/projects.dart';
import 'package:wonjongseo/screens/main/main_screen.dart';

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
      isHome: true,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            CorporationProjects(),
            SizedBox(height: defaultPadding),
            Projects(),
            SizedBox(height: defaultPadding),
          ],
        ),
      ),
    );
  }
}
