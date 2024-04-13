import 'dart:ui';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/BNBM.png",
            fit: BoxFit.contain,
            height: 40,
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 25, 24, 37),
      elevation: 5.0,
      centerTitle: true,
    );
  }
} 