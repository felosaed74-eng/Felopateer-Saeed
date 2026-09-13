import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
         backgroundColor: Colors.black,
             title:Text(
             'ELBATOL',
             style: TextStyle(
             color: Colors.white,
             fontSize:30,
             fontWeight: FontWeight.bold,
          ),
        ),  
         centerTitle: true,
         leading: Icon(Icons.arrow_back, color: Colors.white, size: 30,),
         actions: [
           Icon(Icons.phone, color: Colors.white, size: 30,),
           SizedBox(width: 10,),
           Icon(Icons.video_call, color: Colors.white, size: 30,),
           SizedBox(width: 10,),
           Icon(Icons.menu, color: Colors.white, size: 30,),
           SizedBox(width: 10,),
          ],
        ),
        
        body: Column(
          spacing:10,
          mainAxisAlignment: .spaceEvenly,
          crossAxisAlignment: .stretch,
          children: [
           Container(width: 200, height: 200,color: Colors.amberAccent),
           Image.asset("assets/images/Vector.png"),
          ],
        ),      
      );

  }
}
