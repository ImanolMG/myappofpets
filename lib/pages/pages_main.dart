// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../components/pet_crousel.dart';

class Pages_main extends StatelessWidget {
  const Pages_main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
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

            //Seeker
            _Buscador(),

            _HotSale(),

            _ProductsNearby(),

            //cards products
            _CardProducts(),
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
      padding: const EdgeInsets.only(left: 55.0, bottom: 10, top: 0),
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
      padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
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
            padding: const EdgeInsets.only(top: 20),
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

  Widget _Buscador() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 50, 10),
      child: TextField(
        decoration: InputDecoration(
            labelStyle: const TextStyle(
              color: Color.fromARGB(255, 69, 69, 69),
            ),
            labelText: 'Buscar productos o servicios',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            suffixIcon: const Icon(
              Icons.search,
            )),
      ),
    );
  }

  Widget _HotSale() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: Row(
          children: [
            Image.asset(
              'assets/images/hot_sale.png',
            )
          ],
        ));
  }

  Widget _ProductsNearby() {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Productos cerca',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.normal,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                minimumSize: const Size(10.0, 25.0),
                primary: const Color.fromARGB(255, 255, 255, 255),
                backgroundColor: const Color.fromARGB(255, 117, 167, 86)),
            onPressed: () {},
            child: const Text(
              'Alimento',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Accesorios',
              style: TextStyle(
                  color: Color.fromRGBO(120, 168, 89, 1), fontSize: 12),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Recompensas',
              style: TextStyle(
                color: Color.fromRGBO(120, 168, 89, 1),
                fontSize: 12.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _CardProducts() {
    return Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
        child: Row(
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          'assets/images/royalcanin.jpg',
                          height: 160.0,
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                minimumSize: const Size(10.0, 25.0),
                                backgroundColor:
                                    const Color.fromRGBO(255, 226, 236, 1)),
                            onPressed: () {},
                            child: const Text(
                              'Oferta -50%',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(252, 38, 104, 1),
                              ),
                            ),
                          ),
                          const Text(
                            'Nombre del producto',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(117, 167, 86, 1),
                            ),
                          ),
                          const Text(
                            'AFMP cerca de ti',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(117, 167, 86, 1),
                            ),
                          ),
                          const Text(
                            'Descripción',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(133, 136, 143, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Column(
                              children: const [
                                Text(
                                  '125',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(252, 21, 96, 1)),
                                ),
                                Text(
                                  '30 en stock',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              clipBehavior: Clip.antiAlias,
              elevation: 16,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Image.asset(
                          'assets/images/Royal.png',
                          height: 160.0,
                          fit: BoxFit.fitWidth,
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                minimumSize: const Size(10.0, 25.0),
                                backgroundColor:
                                    const Color.fromRGBO(255, 226, 236, 1)),
                            onPressed: () {},
                            child: const Text(
                              'Oferta -50%',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(252, 38, 104, 1),
                              ),
                            ),
                          ),
                          const Text(
                            'Nombre del producto',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(117, 167, 86, 1),
                            ),
                          ),
                          const Text(
                            'AFMP cerca de ti',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(117, 167, 86, 1),
                            ),
                          ),
                          const Text(
                            'Descripción',
                            style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(133, 136, 143, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Column(
                              children: const [
                                Text(
                                  '125',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(252, 21, 96, 1)),
                                ),
                                Text(
                                  '30 en stock',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
