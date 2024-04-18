import 'package:flutter/material.dart';
import 'package:prototype/models/news/NewsProduct.dart';

class NewsDeets extends StatelessWidget {
  const NewsDeets({Key? key, required this.newsProduct}) : super(key: key);

  final NewsProduct newsProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Details'),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.favorite_border), 
          ),
          IconButton(
            onPressed: () {
             
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
                    color: Color(0xFF2E38E7)),
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
            icon: Icon(Icons.article,
                color: Color(0xFF2E38E7)), 
            label: 'News',
          ),
        ],
        onTap: (int index) {
          if (index == 0) {
          } else if (index == 1) {
          }
        },
      ),
    );
  }
}
