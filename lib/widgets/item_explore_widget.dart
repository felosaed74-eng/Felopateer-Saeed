import 'package:flutter/material.dart';

class ItemExplorewidget extends StatelessWidget {
  const ItemExplorewidget ({
   super.key,
   required this.image,
   required this.title,
   required this.color,
   });
  
  final String image;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: color),
        color: Color(0xffEEF7F1),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 27),
      child: Column(
        spacing: 15,
        mainAxisAlignment: .spaceBetween,
        children: [
          Image.asset(image),
          Text(title,
           style: TextStyle(
             fontSize: 15,
             fontWeight: .w600,
             color: Color(0xff181725),
             overflow: .ellipsis,
            ),
            textAlign: .center,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}

class Category{
  String imagePath;
  Color color;
  String title;

  Category({required this.imagePath,required this.color,required this.title});
}

