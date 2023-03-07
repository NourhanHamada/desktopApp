import 'package:desktop_app/constants/colors.dart';
import 'package:desktop_app/model/recommendation_demo.dart';
import 'package:flutter/material.dart';

import '../../../constants/responsive.dart';

class RecommendationSection extends StatelessWidget {
  const RecommendationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkBlue,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Recommendations',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineMedium
                      : Theme.of(context).textTheme.headlineSmall),
            ),
            // SingleChildScrollView(
            //   physics: const ScrollPhysics(),
            //   scrollDirection: Responsive.isDesktop(context)
            //       ? Axis.horizontal
            //       : Axis.vertical,
            //   child: Row(
            //     children: List.generate(demoRecommendationList.length, (index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(10),
            //         child: Container(
            //           width: 400,
            //           color: lightBlue,
            //           child: Padding(
            //             padding: const EdgeInsets.all(20),
            //             child: Column(
            //               children: [
            //                 ListTile(
            //                   title: Text(
            //                     '${demoRecommendationList[index].name}',
            //                     style: Theme.of(context).textTheme.bodyMedium,
            //                   ),
            //                   subtitle: Text(
            //                     '${demoRecommendationList[index].source}',
            //                     style: Theme.of(context).textTheme.bodyLarge,
            //                   ),
            //                   leading: CircleAvatar(
            //                     backgroundColor: darkBlue,
            //                     radius: 30,
            //                     backgroundImage: AssetImage(
            //                         '${demoRecommendationList[index].image}'),
            //                   ),
            //                 ),
            //                 const SizedBox(
            //                   height: 10,
            //                 ),
            //                 Text(
            //                   demoRecommendationList[index].text,
            //                   maxLines: 4,
            //                   style: const TextStyle(
            //                       height: 1.3, overflow: TextOverflow.ellipsis),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       );
            //     }),
            //   ),
            // ),
            SizedBox(
              height: 210,
              child: ListView.builder(
                scrollDirection: Responsive.isDesktop(context)
                    ? Axis.horizontal
                    : Axis.vertical,
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: demoRecommendationList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 400,
                      color: lightBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text(
                                '${demoRecommendationList[index].name}',
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              subtitle: Text(
                                '${demoRecommendationList[index].source}',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              leading: CircleAvatar(
                                backgroundColor: darkBlue,
                                radius: 30,
                                backgroundImage: AssetImage(
                                    '${demoRecommendationList[index].image}'),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              demoRecommendationList[index].text,
                              maxLines: 4,
                              style: const TextStyle(
                                  height: 1.3, overflow: TextOverflow.ellipsis),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
