import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Aplicación de diseños"),
        ),
        body: const Contenedor());
  }
}

class Contenedor extends StatelessWidget {
  const Contenedor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.location_city),
            trailing: const Icon(Icons.keyboard_arrow_right),
            title: const Text(
              "Primer Diseño",
            ),
            onTap: () {
              Navigator.pushNamed(context, "first");
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.sunny),
            trailing: const Icon(Icons.keyboard_arrow_right),
            title: const Text(
              "Segundo Diseño",
            ),
            onTap: () {
              Navigator.pushNamed(context, "second");
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.picture_in_picture_alt),
            trailing: const Icon(Icons.keyboard_arrow_right),
            title: const Text(
              "Tercer Diseño",
            ),
            onTap: () {
              Navigator.pushNamed(context, "third");
            },
          ),
        ],
      ),
    );
  }
}
