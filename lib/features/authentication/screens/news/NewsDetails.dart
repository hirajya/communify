import 'package:flutter/material.dart';
import 'package:prototype/models/news/NewsProduct.dart';

class NewsDeets extends StatelessWidget {
  const NewsDeets({Key? key, required this.newsProduct}) : super(key: key);

  final NewsProduct newsProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/news_images/Title logo.png',
              width: 164, // Adjust width as needed
              height: 104, // Adjust height as needed
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Handle favorite icon pressed
            },
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {
              // Handle share icon pressed
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                '${newsProduct.author}',
                style: const TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: Text(
                '${newsProduct.date}',
                style: const TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Image.asset(
              newsProduct.image,
              width: 500,
              height: 200,
              fit: BoxFit.fill,
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: const EdgeInsets.only(left: 10.0, bottom: 10),
              child: Text(
                'LATEST ISSUE IN PHILIPPINES',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E38E7),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                newsProduct.description,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'For Me',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article, color: Color(0xFF2E38E7)),
            label: 'News',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
            // Handle navigation to "For Me" screen
          } else if (index == 1) {
            // Handle navigation to "News" screen (current screen)
          }
        },
      ),
    );
  }
}
