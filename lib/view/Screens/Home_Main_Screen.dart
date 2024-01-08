import 'package:Bavaria_Fire_Fighting_Solution/view/Screens/prouductlist%20screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Category_Screen.dart';
import 'Home_Screen.dart';
import 'RegisterScreen.dart';
import '../Widgets/testfirebase.dart';
import 'afterLoagin.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});
  static String id ="HomeMainScreen";

  @override
  State<HomeMainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeMainScreen> {
  int selectedIndexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> screens =[
      const HomeScreen(),
       CategoryScreen(),
      CategoryScreen(),
      FirebaseAuth.instance.currentUser == null ? CategoryScreen() : const ProfileWidget()
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
        elevation: 0,
        selectedItemColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Bag"),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

        ],
      ),
    );
  }
}
