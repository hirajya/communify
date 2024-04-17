// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
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
                Text('Manila City Philippines'),
              ],
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),
          _categoriesSection()
        ],
      ),
    );
  }

  Column _categoriesSection() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 20),
        child: Text(
          'Category',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      const SizedBox(height: 15),
      Container(
        height: 250.0, // Adjust height based on number of news items
        color: Colors.white,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.only(left: 20, right: 20),
          itemCount: newsproduct.length,
          itemBuilder: (context, index) {
            final newsItem = newsproduct[index];
            return newsItemContainer(newsItem); // Call the news item container function
          },
        ),
      ),
    ],
  );
}


  Widget newsItemContainer(NewsProduct newsProduct) {
  // ... existing container code ...

  final formattedDate = DateFormat('dd MMM yyyy').format(newsProduct.publishedAt); // Format date

  return Container(
    // ... existing container properties ...
    child: Row(
      // ... existing Row widget ...
      children: [
        // ... existing image section ...
        const SizedBox(width: 16.0), // Spacing between image and text
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsProduct.title,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8.0), // Spacing between title and description
              Text(
                newsProduct.description,
                maxLines: 2, // Limit description lines
                overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
                style: const TextStyle(fontSize: 14.0),
              ),
              const SizedBox(height: 4.0), // Small spacing below description
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    formattedDate, // Display formatted date
                    style: const TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16.0,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget newsList() {
  return ListView.builder(
    shrinkWrap: true, // Prevent list view from taking unnecessary space
    physics: const NeverScrollableScrollPhysics(), // Disable scrolling if list fits within container
    itemCount: newsproduct.length,
    itemBuilder: (context, index) {
      final newsItem = newsproduct[index];
      return newsItemContainer(newsItem);
    },
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
