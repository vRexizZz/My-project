import 'package:Bavaria_Fire_Fighting_Solution/view/prouductlist%20screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Widgets/testfirebase.dart';
import 'Category_Screen.dart';
import 'Home_Screen.dart';
import 'RegisterScreen.dart';
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
      const TestFirebase(),
      // FirebaseAuth.instance.currentUser == null ?RegisterScreen() : const ProfileWidget()
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

          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Bag"),

          // BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

        ],
      ),
    );
  }
}
