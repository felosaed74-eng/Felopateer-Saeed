import 'package:flutter/material.dart';
import 'package:frist_app/screens/app_section.dart';
import 'package:frist_app/screens/home_screen.dart';
import 'package:frist_app/screens/account_screen.dart';
import 'package:frist_app/screens/product_screen.dart';
import 'package:frist_app/screens/favorites_screen.dart';
import 'package:frist_app/screens/explore_screen.dart';
import 'package:frist_app/screens/my_cart_screen.dart';
import 'package:frist_app/screens/login_screen.dart';
import 'package:frist_app/screens/signup_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: "ELBATOL",
     theme: ThemeData(),
     darkTheme: ThemeData(),
     themeMode: ThemeMode.light,
     debugShowCheckedModeBanner: false,
     home:AppSection(),
     
    );
  }
}