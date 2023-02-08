import 'package:flutter/material.dart';
import 'package:wonjongseo/components/menu/side_menu.dart';
import 'package:wonjongseo/constants.dart';
import 'package:wonjongseo/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.body});

  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            )
          : null,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
                const SizedBox(width: defaultPadding),
                Expanded(child: body, flex: 7),
                const SizedBox(width: defaultPadding)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
