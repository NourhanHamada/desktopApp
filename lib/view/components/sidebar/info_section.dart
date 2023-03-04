import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class InfoSection extends StatelessWidget {
  const InfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        information(title: 'Address', subTitle: 'Cairo/Egypt/Madinaty'),
        information(title: 'Email', subTitle: 'xCompany@gmail.com'),
        information(title: 'Country', subTitle: 'Egypt'),
        information(title: 'Mobile', subTitle: '010123123123'),
        information(title: 'Website', subTitle: 'www.xcompany.com')
      ],
    );
  }
}

Widget information({required String title, required String subTitle}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: whiteColor,
          ),
        ),
        Text(
          subTitle,
          style: TextStyle(
            color: lightGrey,
            fontSize: 12,
          ),
        ),
      ],
    ),
  );
}
