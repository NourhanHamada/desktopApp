import 'package:desktop_app/constants/colors.dart';
import 'package:desktop_app/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsSection extends StatelessWidget {
  const ContactsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightBlue,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset(
            //   github,
            //   width: 20,
            // ),
            // Image.asset(
            //   linkedIn,
            //   width: 20,
            // ),
            // Image.asset(
            //   twitter,
            //   width: 20,
            // ),
            // Image.asset(
            //   telegram,
            //   width: 20,
            // ),
            IconButton(
              onPressed: _githubURL,
              icon: Image.asset(
                github,
                width: 20,
              ),
            ),
            IconButton(
              onPressed: _linkedInURL,
              icon: Image.asset(
                linkedIn,
                width: 20,
              ),
            ),
            IconButton(
              onPressed: _twitterURL,
              icon: Image.asset(
                twitter,
                width: 20,
              ),
            ),
            // IconButton(
            //   onPressed: _telegramURL,
            //   icon: Image.asset(
            //     telegram,
            //     width: 20,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

_githubURL() async {
  const url = 'https://github.com/NourhanHamada';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

_linkedInURL() async {
  const url = 'https://www.linkedin.com/in/nourhan-hamada/';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

_twitterURL() async {
  const url = 'https://twitter.com/UrFavNourrrr';
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    throw 'Could not launch $url';
  }
}

// _telegramURL() async {
//   const url = 'https://github.com/NourhanHamada';
//   final uri = Uri.parse(url);
//   if (await canLaunchUrl(uri)) {
//     await launchUrl(uri);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
