// import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shopping/profile_screen.dart';
import 'package:shopping/screens/men_screen.dart';
import 'package:shopping/screens/women_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MenScreen()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WomenScreen()),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ProfileScreen()),
      );
    }
  }

  final List<Map<String, String>> categories = [
    {
      'name': 'Fashion',
      'imageUrl':
          'https://rukminim2.flixcart.com/fk-p-flap/80/80/image/0d75b34f7d8fbcb3.png?q=100',
    },
    {
      'name': 'Mobile',
      'imageUrl':
          'https://rukminim2.flixcart.com/flap/80/80/image/22fddf3c7da4c4f4.png?q=100',
    },
    {
      'name': 'Electronics',
      'imageUrl':
          'https://rukminim2.flixcart.com/flap/80/80/image/69c6589653afdb9a.png?q=100',
    },
    {
      'name': 'Kilo',
      'imageUrl':
          'https://rukminim2.flixcart.com/flap/80/80/image/29327f40e9c4d26b.png?q=100',
    },
    // Add more categories here
  ];

  final List<Map<String, String>> BestSeller = [
    {
      'name': 'Jacket',
      'imageUrl':
          'https://m.media-amazon.com/images/I/71-83B-od0L._AC_SX385_.jpg',
    },
    {
      'name': 'Jeans',
      'imageUrl':
          'https://m.media-amazon.com/images/I/6144TDQyfsL._AC_SY445_.jpg',
    },
    {
      'name': 'Dress',
      'imageUrl':
          'https://m.media-amazon.com/images/I/61w6pYLxjOL._AC_SX466_.jpg',
    },
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 20),
                    Icon(Icons.shop),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8),
            Image.network(
              'https://assets.ccbp.in/frontend/react-js/exclusive-deals-banner-img.png',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Categories",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            // Expanded ListView for categories
            SizedBox(
              height: 140, // This limits the overall ListView height
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final imageUrl = category['imageUrl']!;
                  final name = category['name']!;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        width: 100, // Card width
                        height: 120, // Card height (limits the card's height)
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.network(imageUrl, width: 80, height: 80),
                            SizedBox(height: 8),
                            Text(name),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Best Seller",
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: BestSeller.length,
                itemBuilder: (context, index) {
                  final best = BestSeller[index];
                  final imageUrl = best['imageUrl']!;
                  final name = best['name']!;

                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: SizedBox(
                            width: 100, // Card width
                            height:
                                120, // Card height (limits the card's height)
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.network(imageUrl, width: 80, height: 80),
                                SizedBox(height: 8),
                                Text(name),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.male, color: Colors.grey),
            label: 'Men',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.female, color: Colors.grey),
            label: 'Women',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.grey),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
