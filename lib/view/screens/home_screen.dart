import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/responsive.dart';
import '../components/main/main_section.dart';
import '../components/sidebar/sidebar_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: darkBlue,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu));
                },
              ),
            ),
      drawer: const SideBarSection(),
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1440, minWidth: 100),
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: Container(
                    color: darkBlue,
                    child: const SideBarSection(),
                  ),
                ),
              Expanded(
                flex: 7,
                child: Container(
                  color: lightGrey,
                  child: const MainSection(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
