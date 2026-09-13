import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({required this.label, required this.keyboardTybe});

final Widget label;
final TextInputType keyboardTybe;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
     
         keyboardType: keyboardTybe,
         decoration: InputDecoration(
         label: label,
         labelStyle: TextStyle(color: Colors.blueGrey),
         suffixIcon: Icon(Icons.remove_red_eye, color: Colors.blue),
         border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(30)                   
        )
      ),
    );
  }
}