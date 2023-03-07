import 'package:desktop_app/constants/colors.dart';
import 'package:desktop_app/view/components/sidebar/contacts_section.dart';
import 'package:desktop_app/view/components/sidebar/goals_section.dart';
import 'package:desktop_app/view/components/sidebar/info_section.dart';
import 'package:desktop_app/view/components/sidebar/logo_section.dart';
import 'package:flutter/material.dart';

class SideBarSection extends StatefulWidget {
  const SideBarSection({Key? key}) : super(key: key);

  @override
  State<SideBarSection> createState() => _SideBarSectionState();
}

class _SideBarSectionState extends State<SideBarSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const LogoSection(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const InfoSection(),
                  const Divider(
                    endIndent: 10,
                    indent: 10,
                    color: lightBlue,
                  ),
                  const GoalsSection(),
                  const Divider(
                    endIndent: 10,
                    indent: 10,
                    color: lightBlue,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.download,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Download',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const ContactsSection(),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



