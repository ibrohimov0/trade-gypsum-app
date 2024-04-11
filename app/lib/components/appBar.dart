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
            "../assets/logo.png",
            fit: BoxFit.contain,
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text("BNBM"),
          ),
        ],
      ),
      backgroundColor: Color(0xff191825),
      elevation: 5.0,
      centerTitle: true,
    );
  }
}
      // title: const Text(
      //   "BNBM",
      //   style: TextStyle(
      //     color: Color(0xffEE1B3F),
      //     fontSize: 27,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
