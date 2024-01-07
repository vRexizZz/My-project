
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Screens/Home_Main_Screen.dart';
import '../Screens/RegisterScreen.dart';


class CheckUser extends StatefulWidget {
  const CheckUser({super.key});
static String id = "check user";
  @override
  State<CheckUser> createState() => _CheckUserState();
}

class _CheckUserState extends State<CheckUser> {
  @override
  void initState() {
    super.initState();
    // Check the user's login status when the app starts
    checkLoginStatus();

  }
  Future<void> checkLoginStatus() async {
    try {
      // Use FirebaseAuth to check the current user
      User? user = FirebaseAuth.instance.currentUser;

      if (user != null) {
        // The user is signed in, navigate to the home screen
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomeMainScreen()));
      } else {
        // The user is not signed in, navigate to the login screen
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegisterScreen()));
      }
    } catch (e) {
      print('Error checking login status: $e');
    }
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator(),),
    );
  }

}
