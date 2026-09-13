// login_page.dart
import 'package:flutter/material.dart';
import 'package:frist_app/widgets/login_button_widget.dart';
import 'package:frist_app/widgets/login_field_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen ({super.key});

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
                  errorBuilder: (context, error, stackTrace) => const SizedBox(height: 60, child: Icon(Icons.shopping_basket, color: Colors.orange, size: 50)),
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Loging",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "Enter your emails and password",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30),
              LoginField(
                label: "Email",
                keyboardType: TextInputType.emailAddress,
              ),
              LoginField(
                label: "Password",
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ),
              SizedBox(height: 20),
              LoginButton(
                text: "Log In",
                onPressed: () {},
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Singup",
                      style: TextStyle(
                        color: Color(0xff53B175),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
