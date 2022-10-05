import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tugas_materi_1/login.dart';

class Kelompok extends StatefulWidget {
  const Kelompok({Key? key}) : super(key: key);
  @override
  State<Kelompok> createState() => kelompok();
}

class kelompok extends State<Kelompok> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Data Kelompok",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Text(
                  "Kelompok 9",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(height: 50),
                Image.asset(
                  "assets/images/Farrel.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  '124200064 - Farrel Cahyo Awangga',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  "assets/images/diyah.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  '124200074 - Diyah Eka Septiyani',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 20),
                Image.asset(
                  "assets/images/ImamAF.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.fitWidth,
                ),
                Text(
                  '124200077 - Imam Agus Faisal',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
