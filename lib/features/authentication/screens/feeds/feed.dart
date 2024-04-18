import 'package:flutter/material.dart';

AppBar myAppBar() {
  return AppBar(
    backgroundColor: Color.fromARGB(255, 255, 255, 255),
    elevation: 0.0,
    title: Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: Row(
        children: [
          Container(
            width: 250,
            height: 40,
            child: Image.asset(
              'assets/images/Title logo.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 40), // Add spacing between the images
          Image.asset(
            'assets/images/notification 1.png',
            fit: BoxFit.cover,
            width: 34, // Adjust the width of the notification icon as needed
            height: 34, // Adjust the height of the notification icon as needed
          ),
        ],
      ),
    ),
  );
}

class feed extends StatefulWidget {
  @override
  _FeedAppState createState() => _FeedAppState();
}

class _FeedAppState extends State<feed> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Index 0: Placeholder for Page 1'),
    Text('Index 1: Placeholder for Page 2'),
    Text('Index 2: Placeholder for Page 3'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Home Page.png'), // Replace with your background image asset path
              fit: BoxFit.cover,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/home (3) 1.png',
                width: 34,
                height: 34,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/megaphone 1.png',
                width: 34,
                height: 34,
              ),
              label: 'Megaphone',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/plus 1.png',
                width: 44,
                height: 44,
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/location (2) 1.png',
                width: 34,
                height: 34,
              ),
              label: 'Location',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/images/user.png',
                width: 34,
                height: 34,
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedFontSize: 20,
          unselectedFontSize: 18,
          iconSize: 50,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}