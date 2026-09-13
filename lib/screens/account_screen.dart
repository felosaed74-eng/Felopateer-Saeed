import 'package:flutter/material.dart';
import 'package:frist_app/widgets/acccount_tile_widget.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Color(0xFFF2F3F2),
                    child: Icon(
                      Icons.person_outline,
                      size: 35,
                      color: Color(0xFF53B175),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Felopateer",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 8),
                            Icon(
                              Icons.edit_outlined,
                              size: 18,
                              color: Color(0xFF53B175),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Felopateer@gmail.com",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 1, color: Color(0xFFE2E2E2)),
            
            Expanded(
              child: ListView(
                children: [
                  AccountTileWidget(
                    icon: Icons.shopping_bag_outlined, 
                    title: "Orders"),
                  AccountTileWidget(
                    icon: Icons.badge_outlined, 
                    title: "My Details"),
                  AccountTileWidget(
                    icon: Icons.location_on_outlined, 
                    title: "Delivery Address"),
                  AccountTileWidget(
                    icon: Icons.payment_outlined, 
                    title: "Payment Methods"),
                  AccountTileWidget(
                    icon: Icons.local_offer_outlined, 
                    title: "Promo Cord"),
                  AccountTileWidget(
                    icon: Icons.notifications_none_outlined, 
                    title: "Notifecations"),
                  AccountTileWidget(
                    icon: Icons.help_outline, 
                    title: "Help"),
                  AccountTileWidget(
                    icon: Icons.info_outline, 
                    title: "About"),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color(0xFFF2F3F2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.logout,
                        color: Color(0xFF53B175),
                      ),
                      SizedBox(width: 40),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF53B175), 
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
