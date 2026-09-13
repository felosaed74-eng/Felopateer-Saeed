import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemCrd extends StatelessWidget {
  ItemCrd ({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    });

  String image;
  String title;
  String description;
  String price;

  @override

  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 250,
      padding: EdgeInsets.all(15),  
       decoration:BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all( color: Color(0xffE2E2E2),),),
        child: Column(
         crossAxisAlignment: .start,
         children: [
          Image.asset(
            image,
             width: 110,
             height: 62,
             fit: BoxFit.cover,
             alignment:.center ,
            ),
           SizedBox(height: 33),
           Text(
             title,
             style: TextStyle(
              fontSize: 16,
              fontWeight: .w400,
              color: Color(0xff181725),
            ),
          ),
           SizedBox(height: 5),
           Text(
            description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: .w400,
                color: Color(0xff7C7C7C),
              ),
            ),
           Spacer(),
           Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                price,
                 style: TextStyle(
                   fontSize: 14,
                   fontWeight: .w400,
                   color: Color(0xff181725),
                  ),
                ),
                SizedBox(
                 width: 45,
                 height: 45,
                 child: FloatingActionButton(
                  onPressed:(){},
                  backgroundColor:Color(0xff53B175) ,
                   child: Icon(Icons.add, color: Colors.white, size: 24),
                  ),
                ),
              ],
            ),  
          ],
        ),
    );
  }
}