import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
        Color(0xff2E305F),
        Color(0xff202333),
      ]));

  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Fondo Morado
        Container(
          decoration: boxDecoration,
        ),
        //Caja rara

        Positioned(top: -100, left: -30, child: _PinkBox())
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 100),
              Color.fromRGBO(241, 142, 172, 1)
            ]),
            borderRadius: BorderRadius.circular(90)),
      ),
    );
  }
}
