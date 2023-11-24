import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';

import '../model/modelPhotos.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  PageController? _pageController;

  List<String> screens = [
    "assets/images/Screenshot 2023-11-24 214224.png",
    "assets/images/Screenshot 2023-11-24 215247.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Container(
        height: 250,
        width: 300,
        child: PageView.builder(
          itemCount: screens.length,
          itemBuilder: (context, index) {
            return Image.asset(
              screens[0],
              fit: BoxFit.fill,
            );
          },
        ),
      ),
    );
  }
}
