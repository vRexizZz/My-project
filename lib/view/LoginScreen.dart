import '../Widgets/Button.dart';
import '../Widgets/TextFormFeildWidget.dart';
import '../helper/showsnack.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  static String id = "Login Screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email, password;
  bool  isloading= false;

  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  // begin: Alignment.topCenter,
                  // end: Alignment.bottomCenter,
                  colors: <Color>[Color(0xffED213A), Color(0xff93291E)]),
            ),
          ),
          title: const Text(
            "Login",
            style: TextStyle(letterSpacing: 0.5),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormFieldWidget(
                  labelText: "Email",
                  onChanged: (data) {
                    email = data;
                  },
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
                Button(
                  textname: 'Login',
                  onTap: () async {
                    if (formkey.currentState!.validate()) {
                      try {
                        isloading=true;
                        setState(() {

                        });
                        await LoginFirebase();

                        showSnackbar(context, "successful");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'user-not-found') {
                          showSnackbar(context, "User Not Found");
                          print(e.code);
                        } else if (e.code == 'wrong-password') {
                          showSnackbar(context, "Wrong Password");
                          print(e.code);
                        }else if (e.code=="INVALID_LOGIN_CREDENTIALS")
                          showSnackbar(context, "Error");
                        print(e.code);
                      }
                      isloading=false;
                      setState(() {

                      });

                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }



  Future<void> LoginFirebase() async {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email!, password: password!);
  }
}
