import 'package:flutter/material.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.quantity,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String price;
  final String quantity;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFFE2E2E2), width: 1),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 70,
            height: 70,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 70,
              height: 70,
              color: Colors.grey[100],
              child: Icon(Icons.shopping_basket, color: Colors.grey),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Icon(Icons.close, color: Colors.grey, size: 20),
                  ],
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        _buildQuantityButton(Icons.remove,Color(0xFFB3B3B3)),
                        Padding(
                          padding:EdgeInsets.symmetric(horizontal: 12),
                          child: Text(
                            quantity,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        _buildQuantityButton(Icons.add,Color(0xFF53B175)),
                      ],
                    ),
                    // 
                    Text(
                      price,
                      style:  TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityButton(IconData icon, Color iconColor) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE2E2E2)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: iconColor, size: 20),
    );
  }
}
