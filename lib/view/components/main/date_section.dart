import 'package:desktop_app/constants/colors.dart';
import 'package:flutter/material.dart';

class DataSection extends StatelessWidget {
  const DataSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightBlue,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            data(context: context,
                icon: Icons.supervisor_account, numbers: '33', text: 'Clients'),
            data(context: context,
                icon: Icons.location_on, numbers: '170', text: 'Projects'),
            data(context: context,
                icon: Icons.public, numbers: '50', text: 'Countries'),
            data(context: context,
                icon: Icons.star, numbers: '13K', text: 'Stars'),
          ],
        ),
      ),
    );
  }
}

data({required var context, required var icon, required var numbers, required var text}){

  return Column(
    children: [
      Icon(icon, size: 30,),
      const SizedBox(
        height: 10,
      ),
      Text(numbers, style: const TextStyle(
        color: Colors.blueAccent,
        fontSize: 20
      ),),
      const SizedBox(
        height: 10,
      ),
      Text(text),
    ],
  );
}
