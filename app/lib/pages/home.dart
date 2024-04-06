import 'package:app/components/appBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: Color(0xff191825),
      body: ListView(
        children: const [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "The BNBM",
                  style: TextStyle(
                    color: Color(0xffffffff)
                  ),
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}