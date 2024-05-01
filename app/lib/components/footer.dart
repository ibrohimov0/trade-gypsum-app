import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Text(
            'Visit our social networks:', // Add a label for clarity
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: _launchURL,
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width,50)),
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 25, 24, 37)),
                iconColor: MaterialStateProperty.all<Color>(Colors.white)),
            icon: const Icon(Icons.web),
            label: const Text('Open Website',style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 15),
          ElevatedButton.icon(
            onPressed: _launchTelegram,
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width,50)),
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0x88, 0xCC, 0xFF)),
                iconColor: MaterialStateProperty.all<Color>(Colors.white)),
            icon: const Icon(Icons.telegram),
            label: const Text('Open Telegram', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 15),
          ElevatedButton.icon(
            onPressed: _launchInstagram,
            style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(Colors.black),
              fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width,50)),
            ),
            icon: SizedBox(
              width: 20,
              height: 20,
              child: Image.asset(
                "assets/images/insta.png",
                fit: BoxFit.cover,
              ),
            ),
            label: const Text('Open Instagram', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 15),
          ElevatedButton.icon(
            onPressed: _phoneCall,
            style: ButtonStyle(
                fixedSize: MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width,50)),
                backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
                iconColor:MaterialStateProperty.all<Color>(Colors.white)),
            icon: const Icon(Icons.phone),
            label: const Text("Call BNBM",style: TextStyle(color: Colors.white),),
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: _launchRewerd,
            child: Text(
            "Rewerd IT Company 2024. Click text",style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 10,)
        ],
      ),
    );
  }

  _launchRewerd() async {
    var url = Uri.parse('https://instagram.com/rewerd_official');
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  _launchURL() async {
    var url = Uri.parse('https://trade-gypsum.netlify.app');
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  _launchTelegram() async {
    var url = Uri.parse('https://t.me/rewerd_official');
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  _launchInstagram() async {
    var url = Uri.parse('https://instagram.com/rewerd_official');
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }

  _phoneCall() async {
    var url = Uri.parse('tel:+998910116631');
    if (await canLaunchUrl(url)) {
        await launchUrl(url);
    } else {
      throw "Could not launch $url";
    }
  }
}
