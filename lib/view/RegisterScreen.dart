import '../Widgets/Button.dart';
import '../Widgets/TextFormFeildWidget.dart';
import '../helper/showsnack.dart';
import 'LoginScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  String? email;
  String? password;
  static String id = "RegisterScreen";
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                // begin: Alignment.topCenter,
                // end: Alignment.bottomCenter,
                colors: <Color>[Color(0xffED213A), Color(0xff93291E)]),
          ),
        ),
        title: const Text(
          "Sign up",
          style: TextStyle(letterSpacing: 0.5),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Image.asset(
                      "assets/images/Bavaria.png",
                      height: 100,
                    ),
                    const Center(
                        child: Text(
                      "Fire Fighting Solutions",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: "opensans"),
                    )),
                    const SizedBox(
                      height: 15,
                    ),
                    Form(
                      key: formkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // const Text(
                          //   "Register",
                          //   style: TextStyle(
                          //       fontSize: 30, fontWeight: FontWeight.bold),
                          // ),
                          const SizedBox(
                            height: 5,
                          ),
                          // TextFormFieldWidget(
                          //   labelText: "Name",
                          // ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormFieldWidget(
                            onChanged: (data) {
                              email = data;
                            },
                            labelText: "Email",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormFieldWidget(
                            onChanged: (data) {
                              password = data;
                            },
                            labelText: "Password",
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          // TextFormFieldWidget(
                          //
                          //   labelText: "Confirm Password",
                          // ),
                          const SizedBox(
                            height: 15,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Align(
                              alignment: Alignment.center,
                              child: Button(
                                onTap: () async {
                                  if (formkey.currentState!.validate()) {
                                    try {
                                      await checkFirebase();
                                      showSnackbar(context,"Sucsecc");
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'weak-password') {
                                        showSnackbar(context, "week password");
                                      } else if (e.code ==
                                          'email-already-in-use') {
                                         showSnackbar(
                                            context, "email Already in use");
                                      }
                                    } catch (e) {
                                      showSnackbar(context, "Error");
                                    }
                                  }
                                },
                                textname: "Sign up",
                              )),
                          const SizedBox(
                            height: 25,
                          ),
                          // Row(
                          //   children: [
                          //     Container(
                          //       width: 85,
                          //       height: 2,
                          //       color: Colors.black,
                          //     ),
                          //     Text("        or continue with        "),
                          //
                          //     Container(
                          //       width: 85,
                          //       height: 2,
                          //       color: Colors.black,
                          //     ),
                          //   ],
                          //
                          // ),
                          Row(
                            children: [
                              const Text("Already have an account ?"),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, LoginScreen.id);
                                  },
                                  child: const Text(
                                    " Login",
                                    style: TextStyle(color: Colors.blue),
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
