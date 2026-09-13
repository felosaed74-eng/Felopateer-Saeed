// custom_text_field.dart
import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
   const LoginField({
    super.key,
    required this.label,
    this.keyboardType = TextInputType.text,
  });

 final String label;
 final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextField(
            keyboardType: keyboardType,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
