import 'dart:js';

import 'package:app/models/projects_model.dart';
import 'package:flutter/material.dart';

class Projects extends StatelessWidget{
  List<ProjectModel> projectsArr = [];
  void _getIntialInfo() {
    projectsArr = ProjectModel.getProjects();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Gypsums",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        const SizedBox(height: 15,),
        const ListView.separated(
          itemCount: projectsArr.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const SizedBox(height: 25,),
          padding: const EdgeInsets.only(left: 20,right: 20),
          itemBuilder: (context,index) {
            return Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    projectsArr[index].iconPath,
                    width: 100,
                    height: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                  )
                ],
              ),
            )
          }
        )
      ],
    );
  }
}