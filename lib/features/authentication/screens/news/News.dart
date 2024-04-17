// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/models/news/CustomSearchBar.dart';
import 'package:prototype/models/news/NewsProduct.dart';
import 'package:prototype/utils/constants/colors.dart';
import 'package:prototype/utils/constants/sizes.dart';

class News extends StatelessWidget {
  const News({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: const Padding(
              padding: EdgeInsets.only(left: 25.0, top: 18.0, bottom: 15),
              child: Text(
                'Latest Problems',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(46, 56, 231, 1),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomSearchBar(controller: searchController),
          ),
          const SizedBox(height: 20),

          Padding(
              padding: const EdgeInsets.only(left: 25.0, top: 1.0, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/logos/bx-compass 1.png',
                  width: 24, // Adjust the width as needed
                  height: 24, // Adjust the height as needed
                ),
                const SizedBox(width: 5),
                  Text('Manila City Philippines'
                ),

              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(18),
              height: 180,
              width: 160,
              decoration: BoxDecoration(
                color: newsproduct[0].color,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Image.asset(newsproduct[0].image),

          )
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      elevation: 0.0,
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          children: [
            Container(
              width: 184,
              height: 108,
              child: Image.asset(
                'assets/images/news_images/Title logo.png',
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Container(
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/logos/search.svg',
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ),
      ],
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(1.0),
        child: Padding(
          padding: EdgeInsets.only(top: 15.0),
          child: Divider(
            height: 1.0,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
