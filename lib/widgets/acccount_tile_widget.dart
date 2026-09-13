import 'package:flutter/material.dart';

class AccountTileWidget extends StatelessWidget {
  const AccountTileWidget({super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFFE2E2E2), width: 1),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
        leading: Icon(
          icon,
          color: Colors.black,
          size: 24,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 16,
        ),
        onTap: () {
        },
      ),
    );
  }
}
