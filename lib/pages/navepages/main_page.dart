import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/pages/navepages/bar_item_page.dart';
import 'package:flutter_cubit/pages/navepages/home_page.dart';
import 'package:flutter_cubit/pages/navepages/my_page.dart';
import 'package:flutter_cubit/pages/navepages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List Pages = [
    Homepage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            label: ('Home'),
            icon: Icon(
              Icons.apps,
            ),
          ),
          BottomNavigationBarItem(
            label: ('Bar'),
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: ('Search'),
            icon: Icon(
              Icons.search,
            ),
          ),
          BottomNavigationBarItem(
            label: ('My'),
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}
