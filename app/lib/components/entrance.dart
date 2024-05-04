import 'dart:async';
import 'package:flutter/material.dart';

class LogoEntranceScreen extends StatefulWidget {
  @override
  _LogoEntranceScreenState createState() => _LogoEntranceScreenState();
}

class _LogoEntranceScreenState extends State<LogoEntranceScreen> {
  double _opacity = 0.0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(milliseconds: 100),
          child: FlutterLogo(size: 200),
        ),
      ),
    );
  }
}
