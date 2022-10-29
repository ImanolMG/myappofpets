import 'package:flutter/material.dart';

class ItemPet extends StatelessWidget {
  const ItemPet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _LogoServices(),
                  _TextTitle(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
      color: const Color.fromRGBO(245, 245, 245, 1),
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: const <BoxShadow>[
        BoxShadow(
          color: Colors.black45,
          offset: Offset(3.0, 4.0),
          blurRadius: 10.0,
        ),
      ],
    );
  }

  Widget _LogoServices() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/B1.png',
          width: 270,
          height: 120,
          fit: BoxFit.fitHeight,
        ),
        Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'Servicios',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(117, 167, 86, 1),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _TextTitle() {
    return Container();
  }
}
