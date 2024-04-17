import 'package:flutter/material.dart';

class NewsProduct {
  final String image, title, description;
  final String author;
  final int size, id;
  final Color color;
  final DateTime publishedAt;

  NewsProduct({
    required this.image,
    required this.title,
    required this.description,
    required this.author,
    required this.size,
    required this.id,
    required this.color,
    required this.publishedAt,
  });
}

List<NewsProduct> newsproduct = [
  NewsProduct(
      id: 1,
      title:
          'Pothole repairs in Metro Manila roads slated on Eid’l Adha holiday',
      author: 'Porito Salvador',
      size: 12,
      description: dummyText,
      image: 'assets/images/news_images/Rectangle 4.png',
      color: Color.fromARGB(255, 186, 192, 195),
      publishedAt: DateTime.now()),
  NewsProduct(
      id: 2,
      title:
          "Pothole repairs in Metro Manila roads slated on Eid’l Adha holiday",
      author: 'Kit Nicholas',
      size: 8,
      description:
          """"More than 90 repairs in some of Metro Manila's major roads have been scheduled on the Eid'l Adha holiday on Monday.
According to Mark Salazar's report in GMA News TV's Balitanghali, the holiday was dedicated to road repair efforts because traffic volume was light.
Authorities identified 91 potholes to be asphalted.

The MMDA said that this measure would prevent road accidents and lessen traffic buildup
""",
      image: "assets/images/news_images/local_pic1.jpg",
      color: const Color(0xFFD3A984),
      publishedAt: DateTime.now()),
  NewsProduct(
      id: 3,
      title: "Spaghetti wires are threat to safety, eyesore in Metro Manila",
      author: 'Dona Magsino',
      size: 10,
      description:
          """The cable wires, many hanging loosely, from street posts pose as serious threats to the safety of pedestrians and residents in some parts of Metro Manila.
In an episode of GMA News TV's Brigada, Cesar Apolinario reported about the situation in Isla Puting Bato in Tondo, Manila where electric cable wires are obstructing the way.
"Nahihirapan po talaga 'yung mga residente namin dito dahil unang-una, syempre 'yung kasiguraduhan din ng mga nakatira dito, dahil katulad nga niyan na talagang super baba na," said Rebecca Sanchez, a purok leader in the area.
The wires have gone down below their original installation height after some residents tampered with these when they encounter electrical problems, she added.

A 68-year-old carpenter living in the compound almost lost his life after the roof of the "kuliglig" vehicle he was riding got entangled with the drooping wires.
"Pinahinto ng driver dahil mapuputol 'yung kuryente. 

Kung tinuluy-tuloy niya, mapuputol 'yung kuryente, patay kami," the victim Roberto Aday said.
On the other hand, this danger doesn't seem to bother the residents of Barangay Damayang Lagi in Quezon City where convoluted electric cable wires also abound.
They casually hang their clothes on the wires.
""",
      image: "assets/images/news_images/local_pic2.jpg",
      color: const Color(0xFF989493),
      publishedAt: DateTime.now()),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
