import 'package:flutter/material.dart';

class GroceryCard extends StatelessWidget {
  const GroceryCard({
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
      width: 300,
      height: 160,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),

      child: Row(
        children: [
          Image.asset(
            image,
            width: 120,
            height: 120,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 20),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 8),
            ],
          ),
        ],
      ),
    );
  }
}