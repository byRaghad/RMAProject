import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class medicine extends StatefulWidget {
  @override
  State<medicine> createState() => _HomePageState();
}

class _HomePageState extends State<medicine> {
  int index=0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle:  true,title: Text("Medicine Page"),


    backgroundColor: Colors.deepOrange,
    ),
      body:Center(
        child:
        Text("No have a medicine now"),

      ),

    );
  }}