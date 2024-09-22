import 'package:flutter/material.dart';
import 'package:new_x/app/pages/hub_page.dart';
import 'package:get/get.dart';

class AppWigdet extends StatelessWidget {
  AppWigdet({super.key});

  final routes = [
    GetPage(name: '/hub', page: () => HubPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      home: HubPage(),
      getPages: routes,
    );
  }
}
