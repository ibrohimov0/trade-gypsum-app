import "package:flutter/material.dart";

class ProjectModel {
  String name;
  String iconPath;
  Color boxColor;
  String text;
  String android3dPath;
  String ios3dPath;

  ProjectModel({
    required this.boxColor,
    required this.iconPath,
    required this.name,
    required this.text,
    required this.android3dPath,
    required this.ios3dPath
  });
  static List<ProjectModel> getProjects() {
    List<ProjectModel> projectsArr = [];
    projectsArr.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "assets/images/gypsum(1).png",
        name: "Sinogips", 
        text: "SINOGIPS 9.5 - гипсокартон патолочный. Размер:(1200*2500*9.5)",
        android3dPath: "assets/3d-models/gypsum(1).glb",
        ios3dPath: "assests/3d-models/gypsum(1).usdz"
      )
    );
    projectsArr.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "assets/images/gypsum(2).png",
        name: "Sinogips", 
        text: "SINOGIPS 9.5 -гипсокартон патолочный влагостойкий. Размер : (1200*2500*9,5)",
        android3dPath: "assets/3d-models/gypsum(2).glb",
        ios3dPath: "assests/3d-models/gypsum(2).usdz"
      )
    );
    projectsArr.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "assets/images/gypsum(3).png",
        name: "Sinogips", 
        text: "SINOGIPS 12.5 -гипсокартон стеновой влагостойкий. Размер : (1200*2500*12,5)",
        android3dPath: "assets/3d-models/gypsum(3).glb",
        ios3dPath: "assests/3d-models/gypsum(3).usdz"
      )
    );
    return projectsArr;
  }
}