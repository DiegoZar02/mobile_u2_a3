import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return AnnotatedRegion<SystemUiOverlayStyle>(
    //   value: const SystemUiOverlayStyle(statusBarColor: Color(0xff79C8FF)), //

    //  child: Scaffold(
    return Scaffold(
        body: Column(children: [
      Image.asset("assets/carnalito.jpg"),
      const Title(),
      const Buttons(),
      Container(
        padding: const EdgeInsets.only(top: 30, left: 13, right: 13),
        child: const Text(
            "Wingman es principalmente una habilidad de inteligencia que Gekko debe equipar antes de lanzarla. Al lanzarla, enviará a Wingman hacia delante, que avanzará por terreno horizontal. Wingman rebotará en las paredes con las que entre en contacto. Mientras está activo, Wingman busca a cualquier agente enemigo dentro de un gran cono frontal. Si Wingman detecta a un enemigo, emitirá una señal acústica y se dirigirá directamente hacia el objetivo.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 17)),
      ),
    ]));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Carnalito",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                "Chicago, USA",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.star,
            color: Colors.blue,
          ),
          const Text("100")
        ],
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(
                Icons.phone,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                "Llamar",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.location_pin,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                "Ubicación",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Column(
            children: [
              Icon(
                Icons.share,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                "Compartir",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }
}
