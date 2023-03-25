import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class locationPage extends StatefulWidget {
  @override
  State<locationPage> createState() => _HomePageState();
}

class _HomePageState extends State<locationPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hospitals Map"),

        backgroundColor: Colors.deepOrange,
      ),
      body: Stack(
        children: [
          Image(
            image: AssetImage("Assets/images/hospitalMap.png"),
            width: 700,
            height: 2000,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 70, right: 30),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "     Search to hospital",
                style: TextStyle(color: Colors.grey[600]),
              ),
              height: 50,
              width: 700,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 20),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 500, left: 70),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                "Chose this hospital",
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
              height: 60,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 20),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
