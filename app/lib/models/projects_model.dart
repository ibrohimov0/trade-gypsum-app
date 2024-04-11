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
    List<ProjectModel> projects = [];
    projects.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "https://res.cloudinary.com/ds9evspym/image/upload/v1712851283/BNBM%20trade-gypsum/felwtjoaeoy4nzhgdefd.png",
        name: "sinogips", 
        text: "SINOGIPS 9.5 - гипсокартон патолочный. Размер:(1200*2500*9.5)"
      )
    );
    projects.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "https://res.cloudinary.com/ds9evspym/image/upload/v1712851283/BNBM%20trade-gypsum/felwtjoaeoy4nzhgdefd.png",
        name: "sinogips", 
        text: "SINOGIPS 9.5 -гипсокартон патолочный влагостойкий. Размер : (1200*2500*9,5)"
      )
    );
    projects.add(
      ProjectModel(
        boxColor: Color(0xff03001C), 
        iconPath: "https://res.cloudinary.com/ds9evspym/image/upload/v1712851283/BNBM%20trade-gypsum/felwtjoaeoy4nzhgdefd.png",
        name: "sinogips", 
        text: "SINOGIPS 12.5 -гипсокартон стеновой влагостойкий. Размер : (1200*2500*12,5)"
      )
    );
    return projects;
  }
}