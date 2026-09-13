import 'package:flutter/material.dart';

class RowSeeAll extends StatelessWidget {
  const RowSeeAll ({super.key, required this.textLeft, required this.textRight});

  final String textLeft;
  final String textRight;
  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: EdgeInsets.symmetric(horizontal:16),
        child: Row(
         mainAxisAlignment: .spaceBetween,
          children: [
            Text( textLeft,
               style: TextStyle(
               fontSize: 24,
               fontWeight:.w600 ,
               color: Color(0xff181725),
              ),
            ),
            Text( textRight, 
               style: TextStyle(
               fontSize: 16,
               fontWeight: .w600,
               color: Color(0xff53B175),
            ),
          ),
        ],
      ),
    );
  }
}