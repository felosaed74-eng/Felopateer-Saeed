import "package:flutter/material.dart";
import "package:frist_app/widgets/groceries_widget.dart";
import "package:frist_app/widgets/item_crd_widget.dart";
import "package:frist_app/widgets/row_see_all_widget.dart";
import "package:frist_app/widgets/search_widget.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         children: [
          SizedBox(height: 56,),
            Image.asset("assets/icons/Group.png"),
            Row(
            mainAxisAlignment: .center,
            children: [
              Image.asset("assets/icons/Exclude.png"),
              Text('Dhaka Banassre', style: TextStyle(
                fontSize:18,
                fontWeight:.w600,
                color: Color(0xff4C4F4D), 
              ),
              ),
            ],
          ),
            SearchWidget(),   
            SizedBox(height: 10,),
            Image.asset("assets/images/banner.png"),
            SizedBox(height: 10,),
            RowSeeAll(textLeft: "Exclusive Offer", textRight:"See all" ) ,     
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: .spaceAround,
               children: [
               ItemCrd(
                 image: "assets/images/Vector.png" ,
                 title:"Red Apple",
                 description: "1Kg, Priceg",
                 price: "\$4.99",
                ),
           
               ItemCrd(
                 image:"assets/images/Vector.png" ,
                 title: "Red Apple",
                 description:"1Kg, Priceg" ,
                 price: "\$4.99",
                ),
              ],
            ), 
            SizedBox(height: 30,),
            RowSeeAll(textLeft: "Best Selling" , textRight: "See all" ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                ItemCrd(
                 image: "assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png", 
                 title: "Organic Bananas",
                 description: "7pcs, Priceg", 
                 price: "\$3.99",
                ),

                 ItemCrd(
                 image: "assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png", 
                 title: "Organic Bananas",
                 description: "7pcs, Priceg", 
                 price: "\$3.99",
                ),
              ],
            ),
            SizedBox(height: 30,),
            RowSeeAll(textLeft: "Groceries", textRight: "See all"),
            SizedBox(height: 180,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 5,
                children: [
                  GroceryCard(
                    image: "assets/images/4215936-pulses-png-8-png-image-pulses-png-409_409 1.png", 
                    title: "Pulses",  
                    color: Color(0XffF8A44C),
                    ),
                    SizedBox(height: 30,),
                    GroceryCard(
                      image: "assets/images/8-82858_download-sack-of-rice-png 1.png", 
                      title: "Rice", 
                      color: Color(0xff53B175),
                  ),
                ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: .spaceAround,
              children: [
                ItemCrd(
                  image: "assets/images/pngfuel 4.png",
                  title: "Beef Bone", 
                  description: "1kg, Priceg", 
                  price: "\$4.99"
                ),

                ItemCrd(
                  image: "assets/images/pngfuel 5.png",
                  title: "Beef Bone", 
                  description: "1kg, Priceg", 
                  price: "\$5.99"
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
