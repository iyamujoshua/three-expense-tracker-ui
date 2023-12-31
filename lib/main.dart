import 'package:flutter/material.dart';
import 'package:internship_ui/view/expenses.dart';
import 'package:internship_ui/view/homepage.dart';
import 'package:internship_ui/view/splashscreen.dart';
import 'package:internship_ui/view/widgets/bottom_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splashscreen(),
      routes:{
         '/Homepage': (context) => const Homepag(),
         '/ButtomNavigation': (context) => const ButtomNavigation(),
         '/expenses':(context) => const expenses(),
      },
    );
  }
}
