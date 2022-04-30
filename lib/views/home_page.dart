import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_ogreniyorum/views/graph_view.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:get/get.dart';
import 'package:getx_ogreniyorum/views/graph_view_history.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  Widget _currentScreen = GraphScreen();

  final iconList = <IconData>[
    Icons.show_chart,
    Icons.history,
    // Icons.brightness_6,
    //Icons.brightness_7,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("track you weight")),
        body: _currentScreen,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => null,
          backgroundColor: Colors.black,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
            iconSize: 40,
            height: Get.height / 12,
            gapLocation: GapLocation.center,
            backgroundColor: Colors.black,
            activeColor: Colors.white,
            inactiveColor: Colors.grey,
            icons: iconList,
            activeIndex: _currentIndex,
            onTap: (index) {
              _currentIndex = index;
              _currentScreen =
                  index == 0 ? GraphScreen() : GraphScreenHistory();
              setState(() {});

              print(index);
            }));
  }
}
