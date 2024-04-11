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
          Image.network(
            "https://res.cloudinary.com/ds9evspym/image/upload/v1703694773/BNBM%20trade-gypsum/BNBM_xm0j8g.png",
            fit: BoxFit.contain,
            height: 40,
          )
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
