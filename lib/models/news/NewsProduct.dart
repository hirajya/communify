import 'package:flutter/material.dart';

class NewsProduct {
  final String image, title, description;
  final String author;
  final int size, id;
  final Color color;

  NewsProduct(
      {required this.image,
      required this.title,
      required this.description,
      required this.author,
      required this.size,
      required this.id,
      required this.color});
}

List <NewsProduct> newsproduct = [
  
  NewsProduct (
    id: 1,
    title: 'Pothole repairs in Metro Manila roads slated on Eid’l Adha holiday',
    author: '254', 
    size: 12,
    description: dummyText,
    image: 'assets/images/news_images/Rectangle 4.png',
    color: Color.fromARGB(255, 186, 192, 195)
    
    ),

 NewsProduct(
      id: 2,
      title: "Belt Bag",
      author:'254',
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: const Color(0xFFD3A984)),
  NewsProduct(
      id: 3,
      title: "Hang Top",
      author: '204',
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: const Color(0xFF989493)),
  NewsProduct(
      id: 4,
      title: "Old Fashion",
      author: '274',
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: const Color(0xFFE6B398)),
  NewsProduct(
      id: 5,
      title: "Office Code",
      author: '294',
      size: 12,
      description: dummyText,
      image: "assets/images/bag_5.png",
      color: const Color(0xFFFB7883)),
      
  NewsProduct(
    id: 6,
    title: "Office Dress",
    author: '234',
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: const Color(0xFFAEAEAE),

  ),
  
];

String dummyText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
