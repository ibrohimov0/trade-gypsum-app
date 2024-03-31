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
      // appBar: appBar(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "ok"
                ),
              )
            ],
          )
        ]
      ),
    );
  }
}