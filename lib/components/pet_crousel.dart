import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../components/item_pet.dart';

class PetCarousel extends StatelessWidget {
  const PetCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 260.0,
      ),
      items: const <Widget>[
        ItemPet(),
        ItemPet(),
        ItemPet(),
        ItemPet(),
        ItemPet(),
      ],
    );
  }
}
