import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 30,bottom: 10),
          child: Text(
            "BNBM \n gipsokartonlarini ko'rish",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Text(
              "BNBM Central Asia Foreign Investment Co., Ltd. (keyingi o'rinlarda Markaziy Osiyo BNBM) 2019 yil 11 iyunda tashkil etilgan. Korxona Farg‘ona viloyatidagi “Qo‘qon” erkin iqtisodiy zonasida joylashgan. ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 127, 127, 127),
                  fontSize: 12,
                  fontWeight: FontWeight.normal
              ),
            ),
          ),
        )
      ],
    );
  }
}
