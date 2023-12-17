import 'package:gap/gap.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Widgets/Screen_Register/Register.dart';
import 'Home_Main_Screen.dart';

class RegisterScreen extends StatefulWidget {
   RegisterScreen({super.key});

  static String id = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Future signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      await FirebaseAuth.instance.signInWithCredential(credential);

      print('User signed in with Google successfully');
      Center(child: CircularProgressIndicator());

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeMainScreen()),
      );
    } catch (e) {
      print('Error signing in with Google: $e');
    }
  }
  String? email;

  String? password;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/b.png"),
                fit: BoxFit.fill)),
        child: Scaffold(

           backgroundColor: Colors.black26,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, bottom: 15),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)),
                  color: Colors.white,
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Register_Screen_Widget(
                      image: 'assets/images/gmail.png',
                      text: 'Continue with Google',
                      fieldColor: Colors.grey.shade300,
                      textColor: Colors.black,
                      onTap:( ) {signInWithGoogle();

                      },
                    ),
                    // Register_Screen_Widget(
                    //   image: 'assets/images/apple.png',
                    //   text: 'Continue with Apple',
                    //   fieldColor: Colors.black,
                    //   textColor: Colors.white,
                    // ),
                    // Register_Screen_Widget(
                    //   image: 'assets/images/facebook (1).png',
                    //   text: 'Continue with Facebook',
                    //   fieldColor: const Color(0xff1877F2),
                    //   textColor: Colors.white,
                    // ),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, top: 5, bottom: 5),
                      padding: const EdgeInsets.only(
                          left: 0, right: 10, bottom: 10, top: 10),
                      decoration: BoxDecoration(
                          border: Border.all(width: 0.5),
                          borderRadius: BorderRadius.circular(50)),
                      child: GestureDetector(
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Gap(10),
                            Gap(10),
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return const HomeMainScreen();
                          }));
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> checkFirebase() async {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }


}

// appBar: AppBar(
//   flexibleSpace: Container(
//     decoration: const BoxDecoration(
//       gradient: LinearGradient(
//           // begin: Alignment.topCenter,
//           // end: Alignment.bottomCenter,
//           colors: <Color>[Color(0xffED213A), Color(0xff93291E)]),
//     ),
//   ),
//   title: const Text(
//     "Sign up",
//     style: TextStyle(letterSpacing: 0.5),
//   ),
// ),

// Padding(
//   padding: const EdgeInsets.all(10.0),
//   child: Center(
//     child: Padding(
//       padding: const EdgeInsets.all(25.0),
//       child: Center(
//         child: ListView(
//           children: [
//             // Image.asset(
//             //   "assets/images/Bavaria-Egypt-Egypt-29995-1612179858-og-removebg-preview.png",
//             //   height: 120,
//             // ),
//             // Form(
//             //   key: formkey,
//             //   child: Column(
//             //     crossAxisAlignment: CrossAxisAlignment.start,
//             //     children: [
//             //       // const Text(
//             //       //   "Register",
//             //       //   style: TextStyle(
//             //       //       fontSize: 30, fontWeight: FontWeight.bold),
//             //       // ),
//             //       TextFormFieldWidget(
//             //         labelText: "Name",
//             //         onChanged: (String) {},
//             //       ),
//             //       const SizedBox(
//             //         height: 15,
//             //       ),
//             //       TextFormFieldWidget(
//             //         onChanged: (data) {
//             //           email = data;
//             //         },
//             //         labelText: "Email",
//             //       ),
//             //       const SizedBox(
//             //         height: 15,
//             //       ),
//             //       TextFormFieldWidget(
//             //         onChanged: (data) {
//             //           password = data;
//             //         },
//             //         labelText: "Password",
//             //       ),
//             //       const SizedBox(
//             //         height: 15,
//             //       ),
//             //       TextFormFieldWidget(
//             //         labelText: "Confirm Password",
//             //         onChanged: (String) {},
//             //       ),
//             //       const SizedBox(
//             //         height: 15,
//             //       ),
//             //       const SizedBox(
//             //         height: 20,
//             //       ),
//             //       Align(
//             //           alignment: Alignment.center,
//             //           child: Button(
//             //             onTap: () async {
//             //               if (formkey.currentState!.validate()) {
//             //                 try {
//             //                   await checkFirebase();
//             //                   showSnackbar(context, "Sucsecc");
//             //                 } on FirebaseAuthException catch (e) {
//             //                   if (e.code == 'weak-password') {
//             //                     showSnackbar(
//             //                         context, "week password");
//             //                   } else if (e.code ==
//             //                       'email-already-in-use') {
//             //                     showSnackbar(context,
//             //                         "email Already in use");
//             //                   }
//             //                 } catch (e) {
//             //                   showSnackbar(context, "Error");
//             //                 }
//             //               }
//             //             },
//             //             textname: "Sign up",
//             //           )),
//             //       const SizedBox(
//             //         height: 25,
//             //       ),
//             //       Row(
//             //         children: [
//             //           const Text("Already have an account ?"),
//             //           GestureDetector(
//             //             onTap: () {
//             //               Navigator.pushReplacementNamed(
//             //                   context, LoginScreen.id);
//             //             },
//             //             child: const Text(
//             //               " Login",
//             //               style:
//             //                   TextStyle(color: Colors.blueAccent),
//             //             ),
//             //           ),
//             //         ],
//             //       ),
//             //       Row(
//             //         children: [],
//             //       )
//             //     ],
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     ),
//   ),
// ),
