import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/pet_crousel.dart';

class Pages_main extends StatelessWidget {
  const Pages_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            //Section of appbar
            _AppBar(),
            //Section of banner
            _Banner(),
            ImageBanner(),
            _BannerLocation(),
            _LocatinStreet(),
            //Section my pet
            _MyPet(),

            //Carousel
            const PetCarousel(),
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

  Widget _Banner() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
        child: Row(
          children: const <Widget>[
            Text(
              'Hola ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Juan',
              style: TextStyle(
                color: Color.fromRGBO(117, 167, 86, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }

  Widget ImageBanner() {
    return Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/LogoInicio.png',
              width: 120.0,
              height: 60.0,
            ),
          ],
        ));
  }

  Widget _BannerLocation() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      child: Row(
        children: const [
          Icon(
            Icons.pets,
            color: Color.fromRGBO(117, 167, 86, 1),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              'Entregar ahora',
              style: TextStyle(
                color: Color.fromRGBO(157, 157, 157, 1),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _LocatinStreet() {
    return Padding(
      padding: const EdgeInsets.only(left: 55.0, bottom: 0, top: 0),
      child: Row(
        children: const [
          Text(
            'Calle 109',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          )
        ],
      ),
    );
  }

  Widget _MyPet() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0, top: 10),
            child: Column(
              children: const [
                Text(
                  'Mis mascotas',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              children: [
                FloatingActionButton(
                  backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
                  foregroundColor: const Color.fromRGBO(86, 46, 122, 1),
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: const <Widget>[
                      Text(
                        'Agregar ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(86, 46, 122, 1),
                        ),
                      ),
                      Text(
                        'mascota',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(86, 46, 122, 1),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
