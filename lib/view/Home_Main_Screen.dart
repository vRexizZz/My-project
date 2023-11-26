import 'package:flutter/material.dart';
import 'package:prouductlist/view/prouductlist%20screen.dart';

import 'Home_Screen.dart';
import 'RegisterScreen.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeMainScreen> {
  int selectedIndexBottomNavigationBar = 0;
  @override
  Widget build(BuildContext context) {

    List<Widget> screens =[
      HomeScreen(),
      ScreenProuductList(),
      ScreenProuductList(),
      RegisterScreen()
    ];
    return Scaffold(
      body: Container(
        child: screens.elementAt(selectedIndexBottomNavigationBar),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndexBottomNavigationBar,
        onTap: (val){
          setState(() {
            selectedIndexBottomNavigationBar=val ;
          });

        },
        elevation: 1,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Bag"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

        ],
      ),
    );
  }
}
