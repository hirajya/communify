import 'package:flutter/material.dart';
import 'package:prototype/features/authentication/screens/signup/signup.dart';

class map extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<map> {
  int _selectedIndex = 0;
  bool _showSmallImage = false; // Track visibility of small image

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

  

  void _toggleSmallImage() {
    setState(() {
      _showSmallImage = !_showSmallImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: myAppBar(),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/mapsview.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (_showSmallImage) // Show small image if _showSmallImage is true
              Positioned(
                left: MediaQuery.of(context).size.width * 0.3, // Adjust left position
                top: MediaQuery.of(context).size.height * 0.3 - 50, // Adjust top position
                child: GestureDetector(
                  onTap: () {
                    Navigator.push( // Navigate to another page when image is clicked
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/Frame 29.png', // Path to small image asset
                    width: 200, // Adjust image width as needed
                    height: 200, // Adjust image height as needed
                  ),
                ),
              ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.2, // Adjust left position
              top: MediaQuery.of(context).size.height * 0.2, // Adjust top position
              child: Opacity(
                opacity: 0.1, // Adjust opacity
                child: ElevatedButton(
                  onPressed: () {
                    _toggleSmallImage(); // Toggle small image visibility
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Make the button background transparent
                  ),
                  child: Text(''),
                ),
              ),
            ),
          ],
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
          SizedBox(width: 40),
          Image.asset(
            'assets/images/notification 1.png',
            fit: BoxFit.cover,
            width: 34,
            height: 34,
          ),
        ],
      ),
    ),
  );
}

void main() {
  runApp(map());
}
