import 'package:flutter/material.dart';
import 'package:new_x/app/pages/home_page.dart';
import 'package:new_x/app/pages/search_page.dart';

class HubPage extends StatefulWidget {
  const HubPage({super.key});

  @override
  _HubPageState createState() => _HubPageState();
}

class _HubPageState extends State<HubPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset(
          'assets/images/logo_dark.png',
          height: 40,
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: bottomBar(),
    );
  }

  Column bottomBar() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 0.3, // Altura da linha
          color: Colors.grey, // Cor da linha
        ),
        BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedIconTheme: const IconThemeData(size: 40),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(0.5),
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.view_list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.indeterminate_check_box), label: ''),
          ],
        ),
      ],
    );
  }
}
