
import 'package:doctor_info/locationPage.dart';
import 'package:doctor_info/medicine.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int _currentIndex = 0;

  List<Widget> listpage = <Widget>[
    HomePage(),
    locationPage(),
    medicine(),
  ];

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "   Hello Raghad!",
          style: TextStyle(color: Colors.deepOrange),
        ),
        leading: Row(

          children: [

            IconButton(
                icon: Icon(Icons.notifications_none),
                color: Colors.deepOrange,
                onPressed: () {}),

            IconButton(
                icon: Icon(Icons.person_2_outlined),
                color: Colors.deepOrange,
                onPressed: () {}),
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, top: 50),
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Upcoming Appoitment",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  SizedBox(
                    width: 150,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 0,
                              left: 80,
                              right: 80,
                            ),
                            child: TextButton(
                              child: Text(
                                "Eye Clinic",
                                style: TextStyle(fontSize: 16,color: Colors.grey[700],fontWeight: FontWeight.bold,
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => infopage(),
                                ));
                              },
                              //Text("Eye Cliniv"),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 0, left: 30),
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.location_on_outlined),
                                      color: Colors.grey[600],
                                      onPressed: () {}),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Al-habib Hospital",style: TextStyle(fontSize: 15,color: Colors.grey[600],
                                  ),
                                  )
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(top: 0, left: 30),
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.calendar_month_outlined),
                                      color: Colors.grey[600],
                                      onPressed: () {}),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("27/7/2023",style: TextStyle( color: Colors.grey[600],
                                  ),),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(top: 5, left: 30),
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.access_time),
                                      color: Colors.grey[600],
                                      onPressed: () {}),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("9:45 am",style: TextStyle(color: Colors.grey[600]),),
                                ],
                              )),
                          // )
                        ],
                      ),
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(16),
                      )

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  //===========================================================
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 60),
                          child: Text("Teet ",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold,
                          ),),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.location_on_outlined),
                                    color: Colors.grey[600],
                                    onPressed: () {}),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("A",style: TextStyle(color: Colors.grey[600]),),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.calendar_month_outlined),
                                    color: Colors.grey[600],
                                    onPressed: () {}),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("8",style: TextStyle(color: Colors.grey[600]),),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.access_time),
                                    color: Colors.grey[600],
                                    onPressed: () {}),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("1:",style: TextStyle(color: Colors.grey[600]),),
                              ],
                            )),
                      ],
                    ),
                    height: 200,
                    width: 92,
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            topLeft: Radius.circular(16))),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text("Previous appointments",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),),
                  SizedBox(
                    width: 150,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              Row(
                children: [
                  Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 0,
                              left: 50,
                              right: 50,
                            ),
                            child: TextButton(
                              child: Text(
                                "Orthopedist Clinic",
                                style: TextStyle(fontSize: 16,color: Colors.grey[700],fontWeight: FontWeight.bold,),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => lastappoitment(),
                                ));
                              },
                              //Text("Eye Cliniv"),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 0, left: 30),
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.location_on_outlined),
                                      color: Colors.grey[600],
                                      onPressed: () {}),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("Al-habib Hospital",style: TextStyle(color: Colors.grey[600]),),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(top: 0, left: 30),
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.calendar_month_outlined),
                                      color: Colors.grey[600],
                                      onPressed: () {}),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("9/4/2023",style: TextStyle(color: Colors.grey[600]),),
                                ],
                              )),
                          Padding(
                              padding: const EdgeInsets.only(top: 0, left: 30),
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.access_time),
                                      color: Colors.grey[600],
                                      onPressed: () {}),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("11:00 am",style: TextStyle(color: Colors.grey[600]),),
                                ],
                              )),
                        ],
                      ),
                      height: 200,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.circular(16),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  //===========================================================
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 60),
                          child: Text("Eye ",
                            style: TextStyle(fontSize: 16,color: Colors.grey[700],fontWeight: FontWeight.bold,),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.location_on_outlined),
                                    color: Colors.grey[600],
                                    onPressed: () {}),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("b",style: TextStyle(color: Colors.grey[600]),),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.calendar_month_outlined),
                                    color: Colors.grey[600],
                                    onPressed: () {}),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("1",style: TextStyle(color: Colors.grey[600]),),
                              ],
                            )),
                        Padding(
                            padding: const EdgeInsets.only(top: 5, left: 20),
                            child: Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.access_time),
                                    color: Colors.grey[600],
                                    onPressed: () {}),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("1:",style: TextStyle(color: Colors.grey[600]),),
                              ],
                            )),
                      ],
                    ),
                    height: 200,
                    width: 92,
                    decoration: BoxDecoration(
                        color: Colors.orange[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            topLeft: Radius.circular(16))),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
