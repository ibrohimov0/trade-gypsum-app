import 'package:flutter/material.dart';
import 'package:app/models/projects_model.dart';

class ProjectsSection extends StatefulWidget {
  @override
  _ProjectsSectionState createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection> {
  List<ProjectModel> projectsArr = [];

  @override
  void initState() {
    super.initState();
    _getIntialInfo();
  }

  void _getIntialInfo() {
    projectsArr = ProjectModel.getProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Gipsokartonlar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 15),
        Column(
          children: projectsArr.map((project) {
            return Container(
              width: MediaQuery.of(context).size.width -50,
              margin: EdgeInsets.only(top: 15,bottom: 15,left: 25),
              decoration: BoxDecoration(
                color: project.boxColor,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Image.asset(project.iconPath),
                    ),
                  ),
                  Text(
                    project.name,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    project.text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}