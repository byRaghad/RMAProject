
import 'package:doctor_info/list.dart';
import 'package:doctor_info/listpage.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'LoginPage.dart';
import 'locationPage.dart';
import 'medicine.dart';

void main() {
  runApp(MaterialApp(
    home: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

//infopage ================================

class infopage extends StatelessWidget {
  const infopage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Appointment Information"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Amal",
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Eye Doctor",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Row(
                        children: [
                          iconDr(
                            icon: Icons.mail,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          iconDr(
                            icon: Icons.phone,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          iconDr(
                            icon: Icons.video_call,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    child: Image(
                      image: AssetImage("Assets/images/doctor_image.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "NOTE",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                  "Please arrive at least 15 minutes before the appointment time,"
                  " and also please do not eat 10 hours before the appointment"
                  " to conduct the necessary tests.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
              SizedBox(
                height: 40,
              ),

              Text(
                "Virtual session link:",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
              ),
              SizedBox(
                height: 8,
              ),
              Column(children: [
                Text(
                  "www.zoom.com",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.blue[600]),
                ),
              ]),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class iconDr extends StatelessWidget {
  const iconDr({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.grey[500],
        size: 32,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.orange[100], borderRadius: BorderRadius.circular(16)),
    );
  }
}
//+++++++++++++++++++++++++++++++++

class lastappoitment extends StatelessWidget {
  const lastappoitment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Appointment Information"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Amal",
                        style: TextStyle(
                            fontSize: 38,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Orthopedist",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey[500],
                        ),
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Row(
                        children: [
                          iconDr(
                            icon: Icons.mail,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          iconDr(
                            icon: Icons.phone,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          iconDr(
                            icon: Icons.video_call,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    child: Image(
                      image: AssetImage("Assets/images/doctor_image.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Text(
                "NOTE",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                  "Please arrive at least 15 minutes before the appointment time,"
                  " and also please do not eat 10 hours before the appointment"
                  " to conduct the necessary tests.",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey)),
              SizedBox(
                height: 40,
              ),
              Text(
                "location",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]),
              ),
              SizedBox(
                height: 10,
              ),
              Column(children: [
                Container(
                  color: Colors.grey,
                  // height: 60,
                  // width: 390,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image(
                      image: AssetImage("Assets/images/map_image.JPG"),
                      height: 200,
                      width: 350,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ]),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
