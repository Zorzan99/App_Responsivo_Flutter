import 'package:app_responsivo/common_widgets/app_bar/app_bar_mobile/mobile_app_bar.dart';
import 'package:app_responsivo/common_widgets/app_bar/app_bar_web/web_app_bar.dart';
import 'package:app_responsivo/common_widgets/breakpoints/breakpoints.dart';
import 'package:app_responsivo/sections_pages.dart/advantage_section/advantage_section.dart';
import 'package:app_responsivo/sections_pages.dart/courses_section/courses_section.dart';
import 'package:app_responsivo/sections_pages.dart/top_section/top_section.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < mobileBreakpoint
              ? const PreferredSize(
                  preferredSize: Size(double.infinity, 56),
                  child: MobileAppBar(),
                )
              : const PreferredSize(
                  preferredSize: Size(double.infinity, 72),
                  child: WebAppBar(),
                ),
          drawer: constraints.maxWidth < mobileBreakpoint ? const Drawer() : null,
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1400),
              child: ListView(
                children: const [
                  TopSection(),
                  AdvantagesSection(),
                  CoursesSection(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
