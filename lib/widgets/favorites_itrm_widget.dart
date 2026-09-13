import 'package:flutter/material.dart';

class FavoriteItemWidget extends StatelessWidget {
  const FavoriteItemWidget({super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  });
  final String title;
  final String subtitle;
  final String price;
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
            width: 60,
            height: 60,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 60,
              height: 60,
              color: Colors.grey[100],
              child: Icon(Icons.local_drink, color: Colors.grey),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                price,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
