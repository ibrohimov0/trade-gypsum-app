import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Text(
            "The BNBM Project view",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}