import 'package:desktop_app/constants/colors.dart';
import 'package:desktop_app/constants/images.dart';
import 'package:desktop_app/model/demo.dart';
import 'package:flutter/material.dart';

import '../../constants/responsive.dart';

class ProjectDescriptionScreen extends StatefulWidget {
  const ProjectDescriptionScreen({Key? key}) : super(key: key);

  @override
  State<ProjectDescriptionScreen> createState() =>
      _ProjectDescriptionScreenState();
}

class _ProjectDescriptionScreenState extends State<ProjectDescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkBlue,
      appBar: Responsive.isDesktop(context)? null : AppBar(
        title: const  Text('Details'),
        backgroundColor: darkBlue,
        elevation: 10,
      ),
      body: Padding(
        padding: Responsive.isDesktop(context)?  const EdgeInsets.all(50.0) : const EdgeInsets.all(20),
        child: Card(
          color: lightBlue,
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      background2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${demoList[0].title}',
                      maxLines: 1,
                      style: const TextStyle(
                          height: 1.3,
                          color: darkBlue,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '${demoList[0].descriptions}',
                      maxLines: 5,
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
                      Navigator.pop(context);
                    });
                  },
                  child: const FittedBox(
                    child: Text(
                      'Back to Home',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
