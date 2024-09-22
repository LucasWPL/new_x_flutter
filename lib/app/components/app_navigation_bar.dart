import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_x/app/pages/home_page.dart';
import 'package:new_x/app/pages/search_page.dart';

class AppNavigationBar extends StatelessWidget {
  final int index;

  final appRoutesMap = [
    const HomePage(),
    const SearchPage(),
  ];

  AppNavigationBar({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        selectedIconTheme: const IconThemeData(size: 40),
        onTap: (value) => {Get.to(appRoutesMap[value])},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.indeterminate_check_box),
            label: '',
          ),
        ]);
  }
}
