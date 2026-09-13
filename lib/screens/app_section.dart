import 'package:flutter/material.dart';
import 'package:frist_app/screens/account_screen.dart';
import 'package:frist_app/screens/explore_screen.dart';
import 'package:frist_app/screens/favorites_screen.dart';
import 'package:frist_app/screens/home_screen.dart';
import 'package:frist_app/screens/my_cart_screen.dart';

class AppSection extends StatefulWidget {
  const AppSection ({super.key});

  @override
  State<AppSection> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AppSection> {
  int currenIndex =0;
  List<Widget> screens =[
    HomeScreen(),
    ExploreScreen(),
    MyCartScreen(),
    FavoritesScreen(),
    AccountScreen(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currenIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:[
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Vector.png"),
            label: "Shop"),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Group 3.png"),
            label: "Explore"),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Vector (1).png"),
            label: "Card"),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Vector (2).png"),
            label: "Favorite"),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/Vector (3).png"),
            label: "Account"),
          
        ],
        currentIndex: currenIndex,
        onTap: (index) {
          currenIndex = index;
          setState(() {});
        },
        selectedLabelStyle: TextStyle(
          fontSize: 16,
          fontWeight: .w600,
          color: Color(0xff53B175),
        ),
        unselectedLabelStyle:TextStyle(
          fontSize: 12,
          fontWeight: .w600,
          color: Color(0xff181725),
        ),
        selectedItemColor: Color(0xff53B175),
      ),
    );
  }
}