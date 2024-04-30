import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
class ThreeDObjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      child: const ModelViewer(
        backgroundColor: Color(0xff323643),
        src: 'assets/3d-models/Astronaut.glb',
        alt: 'A 3D model of an astronaut',
        ar: true,
        autoRotate: true,
        iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
        disableZoom: true,
        disablePan: true,
      )
    );
  }
}
