
import 'package:doctor_info/listpage.dart';
import 'package:doctor_info/locationPage.dart';
import 'package:doctor_info/medicine.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

class list extends StatefulWidget {
  @override
  State<list> createState() => _HomePageState();
}

class _HomePageState extends State<list> {
  int _currentIndex = 0;

  List<Widget> listpagesArray = <Widget>[
    HomePage(),
    locationPage(),
    medicine(),
   listpage(),
  ];

  TextEditingController usernameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: listpagesArray[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.orange[100],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        iconSize: 40,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex=index;
          });
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: (""),
          ),
          BottomNavigationBarItem(

              icon: Icon(Icons.location_on_outlined),
              label: '',
              ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_information_outlined),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
        ],
      ),
    );
  }
}
