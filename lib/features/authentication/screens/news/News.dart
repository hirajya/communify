import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prototype/features/authentication/screens/news/NewsDetails.dart';
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
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Image.asset(
                      'assets/logos/bx-compass 1.png',
                      width: 28,
                      height: 34,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Manila City Philippines',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color.fromRGBO(46, 56, 231, 1),
                    ),
                  ),
                ],
              ),
            ),
            LocalNews(),
          ],
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

  // ignore: non_constant_identifier_names
  Expanded LocalNews() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1,
                ),
                itemCount: newsproduct.length,
                itemBuilder: (context, index) {
                  if (index >= 0 && index < newsproduct.length) {
                    return ItemCardLocal(
                      newsProduct: newsproduct[index],
                      press: () {},
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
          ),
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
              icon: Image.asset(
                'assets/images/news_images/notification 1.png',
                height: 60,
                width: 60,
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

class ItemCardLocal extends StatelessWidget {
  final NewsProduct newsProduct;
  final Function press;

  const ItemCardLocal({
    Key? key,
    required this.newsProduct,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the NewsDeets page with the corresponding news product
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDeets(newsProduct: newsProduct),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 340,
            width: 400,
            decoration: BoxDecoration(
              color: newsProduct.color,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black, // Border color
                width: 1.25, // Border width
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3), // Shadow color
                  blurRadius: 5,
                  offset: Offset(0, 2), // Offset of the shadow
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      newsProduct.image,
                      height: 200,
                      width: 330,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    newsProduct.title,
                    style: const TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text(
                        newsProduct.author,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text(
                        newsProduct.date,
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
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
}
