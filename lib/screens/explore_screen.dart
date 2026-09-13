import 'package:flutter/material.dart';
import 'package:frist_app/widgets/item_explore_widget.dart';
import 'package:frist_app/widgets/search_widget.dart';

// ignore: must_be_immutable
class ExploreScreen extends StatelessWidget {
  ExploreScreen ({super.key});
  List<Category> categories = [
    Category(
      imagePath: "assets/images/pngfuel 10.png", 
      color: Color(0xff53B175), 
      title:"Frash Fruits & Vegetable" ),
    Category(
      imagePath: "assets/images/Group 6835.png", 
      color: Color(0xffF8A44C), 
      title: "Cooking Oil & Ghee"),
    Category(
      imagePath: "assets/images/pngfuel 9.png", 
      color: Color(0xffF7A593), 
      title: "Meat & Fish"),
    Category(
      imagePath: "assets/images/pngfuel 6.png", 
      color: Color(0xffD3B0E0), 
      title: "Bakery & Snacks"),
    Category(
      imagePath: "assets/images/pngfuel.png", 
      color: Color(0xffFDE598), 
      title: "Dairy & Eggs"),
    Category(
      imagePath: "assets/images/pngfuel 6 (1).png", 
      color: Color(0xffB7DFF5), 
      title: "Beverages"),

  ];  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Find Product", style:TextStyle(
           fontSize: 20,
           fontWeight: .w400 ,
           color: Color(0xff181725), 
          ),
        ),
      ),
      
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
        child: Column(
         children: [
          SearchWidget(),         
          Expanded(
            child:  GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               crossAxisSpacing: 15,
               mainAxisSpacing: 15,
               childAspectRatio:175 / 190,
              ),
                itemBuilder: (context, index) => ItemExplorewidget(
                  image: categories[index].imagePath,
                  title: categories[index].title,
                  color: categories[index].color,
                ),
               itemCount: categories.length,
             ),
           ),
          ],
        ),
      ),
    );
  }
}

