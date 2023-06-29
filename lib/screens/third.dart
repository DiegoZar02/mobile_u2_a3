import 'package:act3/widgets/card_widget.dart';
import 'package:flutter/material.dart';

import 'package:act3/widgets/custom_bottom.dart';
import 'package:act3/widgets/page_title.dart';
import 'package:act3/widgets/background_widget.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData.dark;
    return Scaffold(
      backgroundColor: const Color(0xff2E305F),
      body: Stack(
        children: [
          const BackgroundWidget(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottom(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        PageTitle(),
        CardTable(),
      ]),
    );
  }
}
