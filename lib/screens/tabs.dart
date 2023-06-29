import 'package:act3/screens/first.dart';
import 'package:act3/screens/second.dart';
import 'package:act3/screens/third.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
        body: TabBarView(
          children: [
            FirstScreen(),
            SecondScreen(),
            ThirdScreen(),
          ],
        ),
      ),
    );
  }
}
