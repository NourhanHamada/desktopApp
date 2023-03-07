import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/images.dart';
import '../../../constants/responsive.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          const Image(
            image: AssetImage(background2),
            fit: BoxFit.cover,
          ),
          Container(
            color: darkBlue.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Build a great future\n for all of us!',
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            color: whiteColor,
                            backgroundColor: darkBlue.withOpacity(.4))
                        : Responsive.isMobile(context)
                            ? Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: whiteColor,
                                    backgroundColor: darkBlue.withOpacity(.4))
                            : Theme.of(context)
                                .textTheme
                                .headlineMedium!
                                .copyWith(
                                    color: whiteColor,
                                    backgroundColor: darkBlue.withOpacity(.4)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Contact Us!',
                          style: Responsive.isDesktop(context)
                              ? Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: whiteColor,
                                  )
                              : Responsive.isMobile(context)
                                  ? Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: whiteColor,
                                      )
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: whiteColor,
                                      ),
                        ),
                      ),
                    ),
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
