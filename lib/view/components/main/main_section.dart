import 'package:desktop_app/view/components/main/home_section.dart';
import 'package:desktop_app/view/components/main/projects_section.dart';
import 'package:desktop_app/view/components/main/recommendation_section.dart';
import 'package:flutter/material.dart';
import 'date_section.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          HomeSection(),
          DataSection(),
          ProjectsSection(),
          RecommendationSection(),
        ],
      ),
    );
  }
}
