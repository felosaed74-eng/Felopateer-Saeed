import 'package:flutter/material.dart';
import 'package:frist_app/widgets/favorites_itrm_widget.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Favorurite',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
           Divider(height: 1, color: Color(0xFFE2E2E2)),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              children:[
                FavoriteItemWidget(
                  title: "Sprite Can",
                  subtitle: "325ml, Price",
                  price: "\$1.50",
                  imagePath: "assets/images/pngfuel 18.png",
                ),
                FavoriteItemWidget(
                  title: "Diet Coke",
                  subtitle: "355ml, Price",
                  price: "\$1.99",
                  imagePath: "assets/images/pngfuel 17.png",
                ),
                FavoriteItemWidget(
                  title: "Apple & Grape Juice",
                  subtitle: "2L, Price",
                  price: "\$15.50",
                  imagePath: "assets/images/pngfuel 16.png",
                ),
                FavoriteItemWidget(
                  title: "Coca Cola Can",
                  subtitle: "325ml, Price",
                  price: "\$4.99",
                  imagePath: "assets/images/pngfuel 15.png",
                ),
                FavoriteItemWidget(
                  title: "Pepsi Can",
                  subtitle: "330ml, Price",
                  price: "\$4.99",
                  imagePath: "assets/images/pngfuel 14.png",
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF53B175), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                ),
                child: Text(
                  'Add All To Cart',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
