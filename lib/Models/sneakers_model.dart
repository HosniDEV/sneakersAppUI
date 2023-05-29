import 'package:flutter/material.dart';

class Sneaker {
  String? name;
  String? description;
  List<String>? image;
  double? price;
  double? note;

  Sneaker({
    this.name,
    this.description,
    this.image,
    this.price,
    this.note,
  });
  static List<Sneaker> sneakers = [
    Sneaker(
      name: 'Softride Enzo NXT',
      image: [
        'assets/images/puma1.png',
        'assets/images/puma2.png',
        'assets/images/puma3.png',
        'assets/images/puma4.png',
        'assets/images/puma5.png',
      ],
      note: 4.7,
      price: 20.09,
      description:
          'Introducing a running shoe that brings together two of PUMA\'s most popular franchises: Softride and Enzo. Making the most of the Softride EVA technology, these shoes provide e...',
    ),
    Sneaker(
      name: 'Green color adidas',
      image: [
        'assets/images/adidas1.png',
        'assets/images/adidas2.png',
        'assets/images/adidas3.png',
        'assets/images/adidas4.png',
        'assets/images/adidas4.png',
      ],
      note: 4.8,
      price: 20.09,
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),
    Sneaker(
      name: 'Nike Dunk Low',
      image: [
        'assets/images/nike1.png',
        'assets/images/nike2.png',
        'assets/images/nike3.png',
        'assets/images/nike4.png',
        'assets/images/nike4.png',
      ],
      note: 4.5,
      price: 20.09,
      description:
          'Introducing a running shoe that brings together two of PUMA\'s most popular franchises: Softride and Enzo. Making the most of the Softride EVA technology, these shoes provide e...',
    ),
    Sneaker(
      name: 'Nike hight quality ',
      image: [
        'assets/images/ni1.png',
        'assets/images/ni2-.png',
        'assets/images/ni3.png',
        'assets/images/ni4.png',
        'assets/images/ni5.png',
      ],
      note: 4.8,
      price: 20.09,
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),
    Sneaker(
      name: 'Softride Enzo NXT',
      image: [
        'assets/images/puma1.png',
        'assets/images/puma2.png',
        'assets/images/puma3.png',
        'assets/images/puma4.png',
        'assets/images/puma5.png',
      ],
      note: 4.7,
      price: 20.09,
      description:
          'Introducing a running shoe that brings together two of PUMA\'s most popular franchises: Softride and Enzo. Making the most of the Softride EVA technology, these shoes provide e...',
    ),
    Sneaker(
      name: 'Green color adidas',
      image: [
        'assets/images/adidas1.png',
        'assets/images/adidas2.png',
        'assets/images/adidas3.png',
        'assets/images/adidas4.png',
        'assets/images/adidas4.png',
      ],
      note: 4.8,
      price: 20.09,
      description:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    ),
  ];
}
