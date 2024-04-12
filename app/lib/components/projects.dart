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
        Container(
          child: ListView.separated(
            itemCount: projectsArr.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 25),
            padding: const EdgeInsets.only(left: 20, right: 20),
            itemBuilder: (context, index) {
              return Container(
                width: 100,
                decoration: BoxDecoration(
                  color: projectsArr[index].boxColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 300,
                      height: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.network(projectsArr[index].iconPath),
                      ),
                    ),
                    Text(
                      projectsArr[index].name,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      projectsArr[index].text,
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
            },
          ),
        ),
      ],
    );
  }
}
