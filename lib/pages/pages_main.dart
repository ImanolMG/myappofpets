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
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
        children: const [
          Text.rich(
            TextSpan(
              text: 'Hola ',
              style: TextStyle(
                fontSize: 30,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'Juan,',
                    style: TextStyle(
                      color: Color.fromRGBO(117, 167, 86, 1),
                      fontSize: 30,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
