import 'dart:ui';

import 'package:flutter/material.dart';

class Hobi extends StatefulWidget {
  const Hobi({Key? key}) : super(key: key);
  @override
  State<Hobi> createState() => hobi();
}

class hobi extends State<Hobi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Daftar Hobi",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "Farrel Cahyo Awangga",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Image.asset(
                  "assets/images/HobiFarrel.jpeg",
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 10),
                Text(
                  "Bermain game",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Diyah Eka Septyani",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Image.asset(
                  "assets/images/HobiDiyah.jpeg",
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 10),
                Text(
                  "Menonton Film",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Imam Agus Faisal",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Image.asset(
                  "assets/images/HobiImam.jpeg",
                  height: 200,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(height: 10),
                Text(
                  "Bermain Bulu Tangkis",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
