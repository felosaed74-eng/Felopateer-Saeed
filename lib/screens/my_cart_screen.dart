import 'package:flutter/material.dart';
import 'package:frist_app/widgets/cart_item_widget.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'My Cart',
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
          Divider(height: 1, color: Colors.grey),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              children:[
                CartItemWidget(
                  title: "Bell Pepper Red",
                  subtitle: "1kg, Price",
                  price: "\$4.99",
                  quantity: "1",
                  imagePath: "assets/images/72f1ea7dcce3b5d06cd1b1418f9b9413 3.png", 
                ),
                CartItemWidget(
                  title: "Egg Chicken Red",
                  subtitle: "4pcs, Price",
                  price: "\$1.99",
                  quantity: "1",
                  imagePath: "assets/images/pngfuel 16.png",
                ),
                CartItemWidget(
                  title: "Organic Bananas",
                  subtitle: "12kg, Price",
                  price: "\$3.00",
                  quantity: "1",
                  imagePath: "assets/images/92f1ea7dcce3b5d06cd1b1418f9b9413 3.png",
                ),
                CartItemWidget(
                  title: "Ginger",
                  subtitle: "250gm, Price",
                  price: "\$2.99",
                  quantity: "1",
                  imagePath: "assets/images/pngfuel 3.png"
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      'Go to Checkout',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF489E67),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        '\$12.97',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
