import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myappofpets/pages/carrusel_page.dart';

class Carrusel extends StatelessWidget {
  const Carrusel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // appBar: AppBar(
      //   title: const Text('Carrusel'),
      //   backgroundColor: const Color.fromRGBO(79, 21, 129, 1),
      // ),
      debugShowCheckedModeBanner: false,
      initialRoute: "carousel",
      routes: {
        "carousel": (context) => const CarruselPage(),
      },
    );
  }
}
