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
                width: 164,
                height: 104,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             
              Image.asset(
                newsProduct.image,
                width: 500,
                height: 200,
                fit: BoxFit.fill,
              ),

               const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  '${newsProduct.author}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Color.fromARGB(255, 24, 24, 24),
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
                    color: Color.fromARGB(
                        255, 37, 37, 37), // Change text color here
                  ),
                ),
              ),
              const SizedBox(height: 10), // Added space after the image
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  newsProduct.title, // Displaying the title
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Adjust title color as needed
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                child: Text(
                  'LATEST ISSUE IN PHILIPPINES',
                  style: TextStyle(
                    fontSize: 18,
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
                    color:
                        Color.fromARGB(255, 0, 0, 0), // Change text color here
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/news_images/home (3) 1.png',
                width: 34,
                height: 34,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/news_images/megaphone 1.png',
                width: 34,
                height: 34,
              ),
              label: 'Megaphone',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/news_images/plus 1.png',
                width: 44,
                height: 44,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/news_images/location (2) 1.png',
                width: 34,
                height: 34,
              ),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/news_images/profile.png',
                width: 34,
                height: 34,
              ),
              label: 'Profile',
            ),
          ],
        ));
  }
}
