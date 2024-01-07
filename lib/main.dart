import 'package:Bavaria_Fire_Fighting_Solution/view/Screens/Home_Main_Screen.dart';
import 'package:Bavaria_Fire_Fighting_Solution/view/Screens/LoginScreen.dart';
import 'package:Bavaria_Fire_Fighting_Solution/view/Screens/RegisterScreen.dart';
import 'package:Bavaria_Fire_Fighting_Solution/view/Widgets/check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'firebase_options.dart';
import 'manager/cart_cunbit_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProductList());
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => CartCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: FirebaseAuth.instance.currentUser == null ?const RegisterScreen() : const HomeMainScreen(),

        routes: {
          CheckUser.id:(context)=>const CheckUser(),
          RegisterScreen.id: (context) => const RegisterScreen(),
          LoginScreen.id: (context) => const LoginScreen(),
          HomeMainScreen.id : (context)=>const HomeMainScreen()
        },

      ),
    );
  }

}

