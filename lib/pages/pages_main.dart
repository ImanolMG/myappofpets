import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Pages_main extends StatelessWidget {
  const Pages_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _AppBar(),
          ],
        ),
      ),
    );
  }

  Widget _AppBar() {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back,
        color: Color.fromRGBO(235, 20, 101, 1),
      ),
      title: const Text('Tienda'),
      backgroundColor: const Color.fromRGBO(78, 21, 129, 1),
      actions: const [
        Icon(Icons.shopping_basket),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Icon(Icons.search),
        ),
        Icon(Icons.person),
      ],
    );
  }
}
