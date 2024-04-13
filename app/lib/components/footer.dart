import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            'Visit our social networks:', // Add a label for clarity
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Column(children: [
                ElevatedButton.icon(
                  onPressed: _launchURL,
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(170,50)),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 215, 129, 230)),
                      iconColor: MaterialStateProperty.all<Color>(Colors.white)),
                  icon: Icon(Icons.web),
                  label: Text('Open Website',style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: _launchTelegram,
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all<Size>(Size(170,50)),
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0x88, 0xCC, 0xFF)),
                      iconColor: MaterialStateProperty.all<Color>(Colors.white)),
                  icon: Icon(Icons.telegram),
                  label: Text('Open Telegram', style: TextStyle(color: Colors.white)),
                )
              ]),
              SizedBox(height: 20),
              Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: _launchInstagram,
                    style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all<Color>(Colors.black),
                      fixedSize: MaterialStateProperty.all<Size>(Size(170,50)),
                    ),
                    icon: SizedBox(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        "assets/images/insta.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    label: Text('Open Instagram', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 8,),
                  ElevatedButton.icon(
                    onPressed: _phoneCall,
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(Size(170,50)),
                        backgroundColor:MaterialStateProperty.all<Color>(Colors.green),
                        iconColor:MaterialStateProperty.all<Color>(Colors.white)),
                    icon: Icon(Icons.phone),
                    label: Text("Call BNBM",style: TextStyle(color: Colors.white),),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
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

  _phoneCall() async {
    final url = 'tel:+998910116631';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }
}
