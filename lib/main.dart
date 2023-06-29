import 'package:act3/screens/tabs.dart';
import 'package:flutter/material.dart';

// import 'package:act3/screens/home.dart';
import 'package:act3/screens/first.dart';
import 'package:act3/screens/second.dart';
import 'package:act3/screens/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "home",
      routes: {
        "home": (_) => const Tabs(),
        "first": (context) => const FirstScreen(),
        "second": (context) => const SecondScreen(),
        "third": (context) => const ThirdScreen(),
      },
    );
  }
}
