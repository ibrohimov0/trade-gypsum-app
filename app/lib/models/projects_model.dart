import "package:flutter/material.dart";

class ProjectModel {
  String name;
  String iconPath;
  Color boxColor;
  String text;

  ProjectModel({
    required this.boxColor,
    required this.iconPath,
    required this.name,
    required this.text
  });
  static List<ProjectModel> getProjects() {
    List<ProjectModel> projectsArr = [];
    projectsArr.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "assets/images/gypsum(1).png",
        name: "Sinogips", 
        text: "SINOGIPS 9.5 - гипсокартон патолочный. Размер:(1200*2500*9.5)"
      )
    );
    projectsArr.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "assets/images/gypsum(2).png",
        name: "Sinogips", 
        text: "SINOGIPS 9.5 -гипсокартон патолочный влагостойкий. Размер : (1200*2500*9,5)"
      )
    );
    projectsArr.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "assets/images/gypsum(3).png",
        name: "Sinogips", 
        text: "SINOGIPS 12.5 -гипсокартон стеновой влагостойкий. Размер : (1200*2500*12,5)"
      )
    );
    return projectsArr;
  }
}