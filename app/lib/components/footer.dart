import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16), // Add padding for spacing
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, // Center align content
        children: [
          Text(
            'Visit our social networks:', // Add a label for clarity
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8), // Add space between text and button
          ElevatedButton.icon(
            onPressed: _launchURL,
            icon: Icon(Icons.web),
            label: Text('Open Website'),
          ),
          ElevatedButton.icon(
            onPressed: _launchTelegram,
            icon: Icon(Icons.telegram),
            label: Text('Open Telegram'),
          ),
          ElevatedButton.icon(
            onPressed: _launchInstagram,
            icon: SizedBox(
              width: 24,
              height: 24,
              child: Image.asset(
                "assets/images/gypsum(3).png",
                fit: BoxFit.cover,
              ),
            ),
            label: Text('Open Instagram'),
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    const url = 'https://trade-gypsum.netlify.app';
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
  _launchTelegram() async {
    const url = 'https://t.me/rewerd_official';
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
  _launchInstagram() async {
    const url = 'https://instagram.com/rewerd_official';
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
