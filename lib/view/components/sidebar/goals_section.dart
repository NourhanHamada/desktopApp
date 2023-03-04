import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class GoalsSection extends StatelessWidget {
  const GoalsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding( 
           padding: const EdgeInsets.all(8.0),
           child: Text(
              'Goals',
            style: Theme.of(context).textTheme.bodyLarge,
        ),
         ),
        goals(title: 'Planing Stage'),
        goals(title: 'Development'),
        goals(title: 'Execution phase'),
        goals(title: 'Planning Stage'),
      ],
    );
  }
}


Widget goals ({required String title}){
  return Padding(padding: const EdgeInsets.all(5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            const Icon(Icons.check,
              color: Colors.blueAccent,
              size: 20,),
            const SizedBox(
              width: 7,
            ),
            Text('${title}',
              style: const TextStyle(
                  color: whiteColor
              ),
            ),
          ],
        ),
      ],
    ),
  );
}