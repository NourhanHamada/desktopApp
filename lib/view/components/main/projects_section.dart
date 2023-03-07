import 'package:desktop_app/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../constants/responsive.dart';
import '../../../model/demo.dart';
import '../../screens/project_description_screen.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkBlue,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Our Projects',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            projects(
              context: context,
              itemCount: demoList.length,
              itemBuilder: (context, index) {
                return Container(
                  color: lightBlue,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              '${demoList[index].image}',
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '${demoList[index].title}',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  height: 1.3,
                                  color: darkBlue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${demoList[index].descriptions}',
                              maxLines: Responsive.isDesktop(context)? 5 : Responsive.isMobile(context)?  9 : Responsive.isTablet(context)? 9 : 5,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(height: 1.7),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const ProjectDescriptionScreen();
                              }));
                            });
                          },
                          child: const FittedBox(
                            child: Text(
                              'More Info',
                              style: TextStyle(
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

projects({required var itemCount, required var itemBuilder, var context}) {
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: Responsive.isDesktop(context)?  3 : Responsive.isMobile(context)? 1 : 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.70,
    ),
    itemCount: itemCount,
    itemBuilder: itemBuilder,
  );
}
