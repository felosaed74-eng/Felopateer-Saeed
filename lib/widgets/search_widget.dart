import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(25),
              color: Color(0xffF2F3F2), 
            ),
              child: Row(
               spacing: 10,
               children: [
               Image.asset("assets/icons/Vector.png"),
               Text("Search Store", style: TextStyle(
                 fontSize:14,
                 fontWeight: .w600,
                 color:Color(0xff7C7C7C)
            ),
          ),
        ],
      ),
    );
  }
}