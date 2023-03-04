import 'package:desktop_app/constants/colors.dart';
import 'package:desktop_app/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desktop App',
      theme: ThemeData.dark().copyWith(
        primaryColor: darkBlue,
        scaffoldBackgroundColor: darkBlue,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(
              bodyColor: Colors.white,
            )
            .copyWith(
                bodyLarge: const TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                ),
                bodyMedium: TextStyle(
                  color: lightGrey,
                  fontSize: 13,
                  height: 1.3,
                ),
                headlineMedium: TextStyle(color: lightGrey)),
      ),
      home: const HomeScreen(),
    );
  }
}
