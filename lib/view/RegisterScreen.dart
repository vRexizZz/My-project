import 'package:gap/gap.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static String id = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showBottomSheet();
    });
  }

  bool bottomSheetVisible = false;

  void showBottomSheet() {
    showModalBottomSheet(
      isDismissible: false,
      enableDrag: false,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(

                margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                padding: EdgeInsets.only(left: 0,right: 10,bottom: 10,top: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,

                  borderRadius: BorderRadius.circular(50)
                ),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/gmail.png",
                        height: 25,
                      ),
                      const Gap(20),
                      const Text(
                        "Contiue with Google",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  onTap: () {
                
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                padding: EdgeInsets.only(left: 0,right: 10,bottom: 10,top: 10),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/apple.png",
                        height: 25,
                      ),
                      const Gap(20),
                      const Text(
                        "Contiue with Apple",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  onTap: () {

                  },
                ),
              ),
              Container(

                margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                padding: EdgeInsets.only(left: 0,right: 10,bottom: 10,top: 10),
                decoration: BoxDecoration(
                  color: Color(0xff1877F2),

                    borderRadius: BorderRadius.circular(50)
                ),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(10),
                      Image.asset(
                        "assets/images/facebook (1).png",
                        height: 25,
                      ),
                      const Gap(10),
                      const Text(
                        "Contiue with Facebook",
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  onTap: () {

                  },
                ),
              ),
              Container(

                margin: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
                padding: EdgeInsets.only(left: 0,right: 10,bottom: 10,top: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 0.5),


                    borderRadius: BorderRadius.circular(50)
                ),
                child: GestureDetector(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(10),

                      const Gap(10),
                      const Text(
                        "Login",
                        style: TextStyle(

                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  onTap: () {

                  },
                ),
              ),
            ],
          ),
        );
      },
    );
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
                    "assets/images/Screenshot 2023-12-13 170323.png"),
                fit: BoxFit.fill)),
        child: const Scaffold(
          backgroundColor: Colors.black45,
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