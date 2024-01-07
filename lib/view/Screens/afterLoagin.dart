import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'Home_Main_Screen.dart';
import 'RegisterScreen.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(30),
              Center(
                child: Container(
                  width: double.infinity,
                  height: 70,
                  color: Colors.grey.shade300,
                  child: const Align(
                    child: Text(
                      "Welcome",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              const Gap(10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                    onPressed: () {},
                    child: const Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text("Settings"))),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const RegisterScreen()),
                          (route) => false);
                    },
                    child: const Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text("Logout"))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
