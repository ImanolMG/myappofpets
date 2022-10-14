// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pages_main extends StatelessWidget {
  const Pages_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tienda'),
        backgroundColor: const Color.fromRGBO(79, 21, 129, 1),
        actions: const [
          Icon(Icons.shopping_basket),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.notifications),
          ),
          Icon(Icons.person),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 20, 0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: const [
                      Text(
                        'Hola',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 5, 5),
                          fontSize: 35,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          'Juan,',
                          style: TextStyle(
                            color: Color.fromARGB(255, 102, 184, 120),
                            fontSize: 35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Segunda secciíon de imagen
                Container(
                  padding: const EdgeInsets.fromLTRB(280, 10, 10, 0),
                  child: Image.asset(
                    'assets/images/LogoInicio.png',
                    width: 40.0,
                    height: 60.0,
                  ),
                ),

                //Tercera sección: Text + icons
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.pets,
                        color: Color.fromARGB(255, 102, 184, 120),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Entregar ahora',
                          style: TextStyle(
                              color: Color.fromARGB(255, 179, 179, 179)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 30),
                        child: Text('Calle 109'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 30),
                        child: Icon(
                          Icons.keyboard_arrow_down,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
