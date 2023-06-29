import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            color: Color.fromARGB(255, 0, 129, 161),
            icon: Icons.pie_chart,
            text: "General",
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.car_rental,
            text: "Transporte",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.pink,
            icon: Icons.shop_2,
            text: "Shopping",
          ),
          _SingleCard(
            color: Colors.black,
            icon: Icons.dangerous,
            text: "Bills",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Color.fromARGB(255, 16, 6, 213),
            icon: Icons.movie,
            text: "Entretenimient",
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.storefront,
            text: "Grosery",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Color.fromARGB(255, 207, 139, 12),
            icon: Icons.fitness_center,
            text: "Gym Bro",
          ),
          _SingleCard(
            color: Color.fromARGB(255, 213, 81, 213),
            icon: Icons.school,
            text: "School",
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Color.fromARGB(255, 234, 115, 127),
            icon: Icons.sports_motorsports,
            text: "Motorsports",
          ),
          _SingleCard(
            color: Color.fromARGB(255, 143, 124, 12),
            icon: Icons.headphones,
            text: "Music",
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                backgroundColor: color,
                radius: 30,
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(color: color, fontSize: 18),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
