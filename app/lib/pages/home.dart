import 'dart:async';

import 'package:app/components/3d.dart';
import 'package:app/components/appBar.dart';
import 'package:app/components/entrance.dart';
import 'package:app/components/footer.dart';
import 'package:app/components/header.dart';
import 'package:app/components/open.dart';
import 'package:app/components/projects.dart';
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
        children: [
          // LogoEntranceScreen(),
          Header(),
          ProjectsSection(),
          SizedBox(height: 30,),
          Footer(),
          // OpenEntrance()
        ]
      ),
    );
  }
}