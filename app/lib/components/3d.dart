import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ThreeDObjectScreen extends StatelessWidget {
  final String iosPath;
  final String androidPath;

  const ThreeDObjectScreen({
    required this.androidPath,
    required this.iosPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      child: ModelViewer(
        backgroundColor: Color(0xff323643),
        src: androidPath,
        alt: 'A 3D model of an astronaut',
        ar: true,
        autoRotate: true,
        iosSrc: iosPath,
        disableZoom: true,
        disablePan: true,
      ),
    );
  }
}
