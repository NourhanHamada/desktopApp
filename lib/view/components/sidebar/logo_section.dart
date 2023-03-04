import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.32,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: lightBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: FlutterLogo(
                size: 74,
              ),
            ),
            Text(
              'X company',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(
              'Modern home Great\n Interior Design',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
