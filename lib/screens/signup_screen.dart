import 'package:flutter/material.dart';
import 'package:frist_app/widgets/login_button_widget.dart';
import 'package:frist_app/widgets/login_field_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Center(
                child: Image.asset(
                  "assets/icons/Group.png",
                  height: 60,
                  errorBuilder: (context, error, stackTrace) => SizedBox(
                    height: 60, 
                    child: Icon(Icons.shopping_basket, color: Colors.orange, size: 50),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
              SizedBox(height: 8),
              Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),),
              SizedBox(height: 30),
              LoginField(
                label: "Username",),
              LoginField(
                label: "Email",
                keyboardType: TextInputType.emailAddress),
              LoginField(
                label: "Password",),
              SizedBox(height: 8),
              Text(
                "By continuing you agree to our Terms of Service and Privacy Policy.",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),),
              SizedBox(height: 30),
              LoginButton(
                text: "Sing Up",
                onPressed: () {},),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Color(0xff53B175),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
