import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final navList = [
    const Center(
      child: Text(
        'Home',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Search',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),
    const Center(
      child: Text(
        'Settings',
        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation '),
        ),
        body: navList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting, // Shifting
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,

          selectedFontSize: 20,
          iconSize: 29,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                title: Text('Home'),
                backgroundColor: Colors.teal,
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                title: Text('Search'),
                backgroundColor: Colors.green,
                icon: Icon(
                  Icons.search,
                )),
            BottomNavigationBarItem(
                title: Text('Settings'),
                backgroundColor: Colors.blue,
                icon: Icon(
                  Icons.settings,
                ))
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
