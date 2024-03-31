import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
      "BNBM",
          style: TextStyle(
            color: Color(0xffEE1B3F),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {

        }
      ),
    );
  }
}