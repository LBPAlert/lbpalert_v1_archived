import 'package:flutter/material.dart';
import './home_screen.dart';
import './trends_screen.dart';
import './profile_screen.dart';

class TabsScreen extends StatefulWidget {
  //TabsScreen();
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];

  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': HomeScreen(), 'title': 'Home'},
      {'page': TrendsScreen(), 'title': 'Trends'},
      {'page': ProfileScreen(), 'title': 'Profile'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'] as String),
      ),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black, //Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up_sharp),
            title: Text('Trends'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
