import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          scrollDirection: Axis.vertical, children: const [Page1(), Page2()]),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Background(),
        Main(),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image.asset("assets/img.png"));
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    var day = DateFormat("EEEE").format(DateTime.now());

    var textStyle = const TextStyle(
        fontSize: 55, color: Colors.white, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "50°",
            style: textStyle,
          ),
          Text(
            day,
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 120,
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: Colors.amber, shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Welcome',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
